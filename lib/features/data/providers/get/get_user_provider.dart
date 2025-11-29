import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/constant/app_strings.dart';
import 'package:food_ninja/features/data/models/get/get_user_model.dart';
import 'package:food_ninja/features/data/providers/provider.dart';

abstract class GetUserState {}

class GetUserInitial extends GetUserState {}

class GetUserLoading extends GetUserState {}

class GetUserFailure extends GetUserState {
  final String errMessage;

  GetUserFailure({required this.errMessage});
}

class GetUserSuccess extends GetUserState {
  final GetUserModel userModel;

  GetUserSuccess({required this.userModel});
}

class GetUserNotifier extends Notifier<GetUserState> {
  @override
  GetUserState build() {
    return GetUserInitial();
  }

  Future<void> getUser() async {
    final provider = ref.read(getUserServiceProvider);
    state = GetUserLoading();
    try {
      final getUser = await provider.getUser();

      state = GetUserSuccess(userModel: getUser);
    } on Exception catch (e) {
      if (e is DioException) {
        final data = e.response!.data;
        state = GetUserFailure(errMessage: data[kMessage]);
      }
    }
  }
}

final getUserProvider = NotifierProvider<GetUserNotifier, GetUserState>(
  GetUserNotifier.new,
);
