import 'package:inter_day12/model/product.dart';
import 'package:inter_day12/respository/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_viewmodel.g.dart';

@riverpod
class ProductViewmodel extends _$ProductViewmodel{
  final ApiService _apiService = ApiService();
  @override
  FutureOr<Product> build() async => await _apiService.getAllProducts('');
}