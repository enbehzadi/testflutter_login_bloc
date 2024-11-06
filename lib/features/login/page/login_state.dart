import 'package:equatable/equatable.dart';

// تعریف وضعیت‌های ورود
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {}