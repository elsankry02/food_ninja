import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/constant/app_strings.dart';
import 'package:food_ninja/features/data/providers/provider.dart';

abstract class RegisterNewUserState {}

class RegisterNewUserInitial extends RegisterNewUserState {}

class RegisterNewUserLoading extends RegisterNewUserState {}

class RegisterNewUserFailure extends RegisterNewUserState {
  final String errMessage;

  RegisterNewUserFailure({required this.errMessage});
}

class RegisterNewUserSuccess extends RegisterNewUserState {}

class RegisterNewUserNotifier extends Notifier<RegisterNewUserState> {
  @override
  RegisterNewUserState build() {
    return RegisterNewUserInitial();
  }

  Future<void> registerNewUser({
    required String authMethod,
    String? email,
    String? phone,
    String? phonePrefix,
    String? prefix,
  }) async {
    final provider = ref.read(regRegisterNewUserServiceProvider);
    state = RegisterNewUserLoading();
    try {
      await provider.registerNewUserService(
        authMethod: authMethod,
        email: email,
        phone: phone,
        phonePrefix: phonePrefix,
        prefix: prefix,
      );
      state = RegisterNewUserSuccess();
    } on Exception catch (e) {
      if (e is DioException) {
        final data = e.response!.data;
        state = RegisterNewUserFailure(errMessage: data[kMessage]);
      }
    }
  }
}

final registerNewUserProvider =
    NotifierProvider<RegisterNewUserNotifier, RegisterNewUserState>(
      RegisterNewUserNotifier.new,
    );
