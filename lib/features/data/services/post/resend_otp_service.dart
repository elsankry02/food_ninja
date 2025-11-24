import 'package:dio/dio.dart';

class ResendOtpService {
  final Dio dio;

  ResendOtpService({required this.dio});
  Future<void> resendOtp({
    required String authMethod,
    String? phonePrefix,
    String? email,
    String? phone,
  }) async {
    await dio.post(
      "/auth/resend-otp",
      data: {
        "auth_method": authMethod,
        if (phonePrefix != null) "phone_prefix": phonePrefix,
        if (email != null) "email": email,
        if (phone != null) "phone": phone,
      },
    );
  }
}
