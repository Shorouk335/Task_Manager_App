import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialState());
  AuthCubit get(context) => BlocProvider.of<AuthCubit>(context);
}
