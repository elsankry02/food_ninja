import 'package:dio/dio.dart';
import '../../models/auth/post/authentication_model.dart';

import '../../../../core/constant/app_strings.dart';

class VerifyOtpService {
  final Dio dio;

  VerifyOtpService({required this.dio});
  Future<AuthenticationModel> verifyOtp({
    required String authMethod,
    String? otp,
    String? phonePrefix,
    String? email,
    String? phone,
  }) async {
    final response = await dio.post(
      kVerifyOtp,
      data: {
        "auth_method": authMethod,
        if (otp != null) "otp": otp,
        if (phonePrefix != null) "phone_prefix": phonePrefix,
        if (email != null) "email": email,
        if (phone != null) "phone": phone,
      },
    );
    final data = response.data as Map<String, dynamic>;
    return AuthenticationModel.fromJson(data);
  }
}
