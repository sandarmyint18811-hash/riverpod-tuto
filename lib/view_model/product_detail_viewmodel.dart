import 'package:inter_day12/model/product.dart';
import 'package:inter_day12/respository/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail_viewmodel.g.dart';

@riverpod
class ProductDetailViewmodel extends _$ProductDetailViewmodel{
  final ApiService _apiService = ApiService();
  @override
  FutureOr<ProductElement> build(int id) async => await _apiService.getProductDetail(id as String);
}