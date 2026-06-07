import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:inter_day12/view_model/auth_viewmodel.dart';
import 'package:inter_day12/view_model/product_viewmodel.dart';

class ProductList extends ConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productViewmodelProvider);
    final user = ref.watch(authViewmodelProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Welcome ${user?.firstName??'Unknow User'}'),
      actions: [ IconButton(
        onPressed: (){
          ref.read(authViewmodelProvider.notifier).logout();
        },
        icon : Icon(Icons.logout),
        ),
      ],
      ),
      body: product.when(data: (product){
        final productList = product.products;
        return ListView.builder(
          itemCount: productList.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              child: ListTile(
                leading: Image.network(productList?[index].thumbnail?? '', width: 50, height: 50,),
                title: Text(productList?[index].title??''),
                subtitle: Text('\$${productList?[index].price}'),
                onTap: () => 
                context.push('/product/${productList?[index].id}'),
              ),
            );
          });
      }, error: (error,stack) => Center(child: Text('err.toString()')), loading: () => Center(child: CircularProgressIndicator())),
    );
  }
}