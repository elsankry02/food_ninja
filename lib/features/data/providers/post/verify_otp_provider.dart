import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/constant/app_strings.dart';
import 'package:food_ninja/features/data/providers/provider.dart';

abstract class VerifyOtpState {}

class VerifyOtpInitial extends VerifyOtpState {}

class VerifyOtpLoading extends VerifyOtpState {}

class VerifyOtpFailure extends VerifyOtpState {
  final String errMessage;

  VerifyOtpFailure({required this.errMessage});
}

class VerifyOtpSuccess extends VerifyOtpState {}

class VerifyOtpNotifier extends Notifier<VerifyOtpState> {
  @override
  VerifyOtpState build() {
    return VerifyOtpInitial();
  }

  Future<void> verifyOtp({
    required String authMethod,
    String? otp,
    String? phonePrefix,
    String? email,
    String? phone,
  }) async {
    final provider = ref.read(verifyOtpServiceProvider);
    state = VerifyOtpLoading();
    try {
      await provider.verifyOtp(
        authMethod: authMethod,
        otp: otp,
        phonePrefix: phonePrefix,
        email: email,
        phone: phone,
      );
      state = VerifyOtpSuccess();
    } on Exception catch (e) {
      if (e is DioException) {
        final data = e.response!.data;
        state = VerifyOtpFailure(errMessage: data[kMessage]);
      }
    }
  }
}

final verifyOtpProvider = NotifierProvider<VerifyOtpNotifier, VerifyOtpState>(
  VerifyOtpNotifier.new,
);
