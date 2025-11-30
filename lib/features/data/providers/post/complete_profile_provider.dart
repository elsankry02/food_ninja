import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/constant/app_strings.dart';
import 'package:food_ninja/features/data/providers/provider.dart';

abstract class CompleteProfileState {}

class CompleteProfileInitial extends CompleteProfileState {}

class CompleteProfileLoading extends CompleteProfileState {}

class CompleteProfileFailure extends CompleteProfileState {
  final String errMessage;

  CompleteProfileFailure({required this.errMessage});
}

class CompleteProfileSuccess extends CompleteProfileState {}

class CompleteProfileNotifier extends Notifier<CompleteProfileState> {
  @override
  CompleteProfileState build() {
    return CompleteProfileInitial();
  }

  Future<void> completeProfile({
    required String name,
    required String username,
    String? email,
    File? file,
  }) async {
    final provider = ref.read(completeProfileServiceProvider);
    state = CompleteProfileLoading();
    try {
      await provider.completeProfile(
        name: name,
        username: username,
        email: email,
      );
      state = CompleteProfileSuccess();
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
