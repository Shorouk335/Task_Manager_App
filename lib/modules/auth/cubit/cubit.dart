import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/core/app_utils/utils.dart';
import 'package:task_manager_app/modules/auth/domain/model.dart';
import 'package:task_manager_app/modules/auth/domain/reapository/repository.dart';
import 'states.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialState());
  static AuthCubit get(context) => BlocProvider.of<AuthCubit>(context);
  AuthModel? authModel;

 Future login({required String userName, required String password}) async {
    emit(LoginLoadingState());
    final response =
        await AuthRepository.login(userName: userName, password: password);

    if (response != null) {
      authModel = response;
      Utils.pref().setToken(response.token ??"");
      
    emit(LoginSucsessState());
    } else {
      authModel = null;
    emit(LoginErrorState());
    }
  }
}
