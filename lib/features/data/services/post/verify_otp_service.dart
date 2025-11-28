import 'package:dio/dio.dart';
import 'package:food_ninja/core/constant/app_strings.dart';

class VerifyOtpService {
  final Dio dio;

  VerifyOtpService({required this.dio});
  Future<void> verifyOtp({
    required String authMethod,
    String? otp,
    String? phonePrefix,
    String? email,
    String? phone,
  }) async {
    await dio.post(
      kVerifyOtp,
      data: {
        "auth_method": authMethod,
        if (otp != null) "otp": otp,
        if (phonePrefix != null) "phone_prefix": phonePrefix,
        if (email != null) "email": email,
        if (phone != null) "phone": phone,
      },
    );
  }
}
