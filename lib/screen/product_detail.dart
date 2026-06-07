import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inter_day12/view_model/product_detail_viewmodel.dart';

class ProductDetail extends ConsumerWidget {
  final int id;

  const ProductDetail({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productDetail = ref.watch(productDetailViewmodelProvider(id));
    return Scaffold(
      appBar: AppBar(title: Text('Product Detail')),
      body: productDetail.when(
        data: (productElement){
          return Column(
            spacing: 8,
            children: [
              Image.network(productElement.thumbnail??'', height: 200),
              Text(productElement.title??'title'),
              Text('\$${productElement.price}'),
              Text(productElement.description??'description'),
            ],
          );
        } , // Replace with actual UI for displaying product details
        error: (error, stack) => Center(child: Text(error.toString())),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
    