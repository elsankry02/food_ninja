import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/constant/app_strings.dart';
import 'package:food_ninja/features/data/providers/provider.dart';

abstract class DeleteAccountState {}

class DeleteAccountInitial extends DeleteAccountState {}

class DeleteAccountLoading extends DeleteAccountState {}

class DeleteAccountFailure extends DeleteAccountState {
  final String errMessage;

  DeleteAccountFailure({required this.errMessage});
}

class DeleteAccountSuccess extends DeleteAccountState {}

class DeleteAccountNotifier extends Notifier<DeleteAccountState> {
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
      }
    }
  }
}

final deleteAccountProvider =
    NotifierProvider<DeleteAccountNotifier, DeleteAccountState>(
      DeleteAccountNotifier.new,
    );
