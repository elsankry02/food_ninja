import 'package:dio/dio.dart';
import 'package:food_ninja/core/constant/app_strings.dart';

class DeleteAccountService {
  final Dio dio;

  DeleteAccountService({required this.dio});
  Future<void> deleteAccount() async {
    await dio.delete(kDeleteAccount);
  }
}
