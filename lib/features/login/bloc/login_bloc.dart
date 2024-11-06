import 'package:flutter_bloc/flutter_bloc.dart';
import '../page/login_state.dart';
import 'login_event.dart';

// تعریف BLoC برای مدیریت وضعیت ورود
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSubmitted>((event, emit) {
      if (event.username == 'test' && event.password == 'test') {
        emit(LoginSuccess());
      } else {
        emit(LoginFailure());
      }
    });
  }
}
