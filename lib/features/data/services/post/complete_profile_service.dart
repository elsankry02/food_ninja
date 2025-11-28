import 'dart:io';

import 'package:dio/dio.dart';
import 'package:food_ninja/core/constant/app_strings.dart';

class CompleteProfileService {
  final Dio dio;

  CompleteProfileService({required this.dio});

  Future<void> completeProfile({
    required String name,
    required String username,
    required File avatar,
  }) async {
    await dio.post(
      kCompleteProfile,
      data: FormData.fromMap({
        'name': name,
        'username': username,
        'avatar': await MultipartFile.fromFile(avatar.path),
      }),
    );
  }
}
