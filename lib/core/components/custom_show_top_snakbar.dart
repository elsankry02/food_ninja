// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// error Message
ErrorMessage(BuildContext context, {required String message}) {
  showTopSnackBar(Overlay.of(context), CustomSnackBar.error(message: message));
}

// Success Message
SuccessMessage(BuildContext context, {required String message}) {
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.success(message: message),
  );
}
