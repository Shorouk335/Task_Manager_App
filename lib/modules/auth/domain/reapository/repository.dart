import 'package:task_manager_app/core/app_utils/utils.dart';
import 'package:task_manager_app/modules/auth/domain/model.dart';
import 'package:task_manager_app/modules/auth/domain/reapository/end_points.dart';

class AuthRepository {
  static Future<AuthModel?> login({required String userName, required String password}) async{
  final apiResult = await  Utils.dio().postData(
      url: AuthEndPoint.post,
       body: {
      "username": userName,
      "password": password,
            });

    if (apiResult.isError == false ){
          return AuthModel.fromJson(apiResult.response?.data);
    } else{
      return null ; 
    }
  }
}
