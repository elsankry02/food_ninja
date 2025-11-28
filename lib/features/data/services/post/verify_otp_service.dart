import 'package:dio/dio.dart';
import 'package:food_ninja/core/constant/app_strings.dart';
import 'package:food_ninja/features/data/models/get/user_model.dart';

class VerifyOtpService {
  final Dio dio;

  VerifyOtpService({required this.dio});
  Future<UserModel> verifyOtp({
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
    return UserModel.fromJson(data);
  }
}
