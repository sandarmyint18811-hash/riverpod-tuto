import 'package:inter_day12/model/user_model.dart';
import 'package:inter_day12/respository/api_service.dart';
import 'package:inter_day12/utility/my_share.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class AuthViewmodel extends _$AuthViewmodel{
  final ApiService _apiService = ApiService();
  @override
  UserModel? build() => null;

  bool get isAuth => state != null;
  Future<void> login(String username, String password) async{
    try{
    state = await _apiService.login(username, password);
    MyShare.saveToken(state?.accessToken ?? '');
    MyShare.saveUserData(state!);
    }catch(e){
      state = null;
      rethrow;
    }
  }
  void logout() => state = null;
}