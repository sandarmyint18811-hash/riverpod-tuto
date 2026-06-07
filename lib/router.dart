import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:inter_day12/screen/login_screen.dart';
import 'package:inter_day12/screen/product_detail.dart';
import 'package:inter_day12/screen/product_list.dart';
import 'package:inter_day12/view_model/auth_viewmodel.dart';

final routerProvider = Provider<GoRouter>((ref){
  return GoRouter(
    initialLocation: '/login',
    routes: [
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/products', builder: (context, state) => ProductList()),
    GoRoute(path: '/product/:id', builder: (context, state){
      int id = int.parse(state.pathParameters['id']!);
      return ProductDetail(id: id);
      }
    ),   
    ],
    redirect: (context, state){
      final isLoggedIn = ref.watch(authViewmodelProvider) != null;
      final isGoingToLogin = state.matchedLocation == '/login';
      if(!isLoggedIn) return '/login';
      if(isLoggedIn && isGoingToLogin) return '/products';
      return null;
    },
  );
});