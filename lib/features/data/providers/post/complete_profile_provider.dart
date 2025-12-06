import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/features/data/models/get/get_user_model.dart';

import '../../../../core/constant/app_strings.dart';
import '../provider.dart';

abstract class CompleteProfileState {}

class CompleteProfileInitial extends CompleteProfileState {}

class CompleteProfileLoading extends CompleteProfileState {}

class CompleteProfileFailure extends CompleteProfileState {
  final String errMessage;

  CompleteProfileFailure({required this.errMessage});
}

class CompleteProfileSuccess extends CompleteProfileState {
  final GetUserModel userModel;

  CompleteProfileSuccess({required this.userModel});
}

class CompleteProfileNotifier extends Notifier<CompleteProfileState> {
  @override
  CompleteProfileState build() {
    return CompleteProfileInitial();
  }

  Future<void> completeProfile({
    required String name,
    required String username,
    File? file,
    String? email,
  }) async {
    final provider = ref.read(completeProfileServiceProvider);
    state = CompleteProfileLoading();
    try {
      final userData = await provider.completeProfile(
        file: file,
        name: name,
        username: username,
        email: email,
      );
      state = CompleteProfileSuccess(userModel: userData);
    } on Exception catch (e) {
      if (e is DioException) {
        final data = e.response!.data;
        state = CompleteProfileFailure(errMessage: data[kMessage]);
        return;
      }
      state = CompleteProfileFailure(errMessage: e.toString());
    }
  }
}

final completeProfileProvider =
    NotifierProvider<CompleteProfileNotifier, CompleteProfileState>(
      CompleteProfileNotifier.new,
    );
