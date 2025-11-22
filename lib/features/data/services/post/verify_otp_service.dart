import 'package:dio/dio.dart';

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
      "/auth/verify-otp",
      data: {
        "auth_method": authMethod,
        if (otp != null) "prefix": otp,
        if (phonePrefix != null) "phone_prefix": phonePrefix,
        if (email != null) "email": email,
        if (phone != null) "phone": phone,
      },
    );
  }
}
