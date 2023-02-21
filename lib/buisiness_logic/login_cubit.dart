
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../network/dio_helper.dart';


part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  void loginWithMobile({
    required String mobile,

  }) {
    emit(LoginLoadingState());
    DioHelper.postData(
      url: "Login",
      data: {'mobile': mobile, },
    ).then((value) {
      // if (kDebugMode) {
      //   loginModel = LoginModel.fromJson(value.data);
      // }
      emit(LoginSuccessState(
        //loginModel!
      ));
    }).catchError((error) {
      // if (kDebugMode) {
      //   print(error.toString());
      // }
      emit(LoginErrorState());
    });
  }


}
