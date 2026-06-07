import 'package:dio/dio.dart';
import 'package:inter_day12/model/product.dart';
import 'package:inter_day12/model/user_model.dart';
import 'package:inter_day12/utility/my_share.dart';
import 'package:path/path.dart' as path;

class ApiService {
  final _dio = Dio()
    ..options.baseUrl = 'https://dummyjson.com/'
    ..options.connectTimeout = Duration(seconds: 5)
    ..options.receiveTimeout = Duration(seconds: 5);

  final _login = 'auth/login';
  final _productRoute = 'auth/products';
  
  Future<UserModel?> login(String username, String password) async {
    final token = MyShare.getToken();
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await _dio.post(
      _login, 
      data: {'username': username,'password': password,
    });
    return UserModel.fromJson(response.data);
  }

  Future<Product> getAllProducts(String token) async{
    final token = MyShare.getToken();
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await _dio.get(_productRoute);
    return Product.fromJson(response.data);
  }

  Future<ProductElement> getProductDetail(String id) async{
    final token = MyShare.getToken();
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await _dio.get(path.join(_productRoute, id.toString()));
    return ProductElement.fromJson(response.data);
  }
}