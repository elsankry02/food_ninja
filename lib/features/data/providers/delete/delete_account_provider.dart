import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constant/app_strings.dart';
import '../provider.dart';

abstract class DeleteAccountState {}

class DeleteAccountInitial extends DeleteAccountState {}

class DeleteAccountLoading extends DeleteAccountState {}

class DeleteAccountFailure extends DeleteAccountState {
  final String errMessage;

  DeleteAccountFailure({required this.errMessage});
}

class DeleteAccountSuccess extends DeleteAccountState {}

class DeleteAccountNotifier extends AutoDisposeNotifier<DeleteAccountState> {
  @override
  DeleteAccountState build() {
    return DeleteAccountInitial();
  }

  Future<void> deleteAccount() async {
    final provider = ref.read(deleteAccountServiceProvider);
    state = DeleteAccountLoading();
    try {
      await provider.deleteAccount();
      state = DeleteAccountSuccess();
    } on Exception catch (e) {
      if (e is DioException) {
        final data = e.response!.data;
        state = DeleteAccountFailure(errMessage: data[kMessage]);
        return;
      }
      state = DeleteAccountFailure(errMessage: e.toString());
    }
  }
}

final deleteAccountProvider =
    NotifierProvider.autoDispose<DeleteAccountNotifier, DeleteAccountState>(
      DeleteAccountNotifier.new,
    );
