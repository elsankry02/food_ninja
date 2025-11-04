import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constant/app_enums.dart';
import 'provider.dart';

abstract class LocalizationState {}

class LocalizationInitial extends LocalizationState {}

class LocalizationSuccess extends LocalizationState {
  final String isSelected;

  LocalizationSuccess({required this.isSelected});
}

class LocalizationNotifier extends Notifier<LocalizationState> {
  @override
  LocalizationInitial build() {
    return LocalizationInitial();
  }

  localizationFunc(Localization localization) {
    switch (localization) {
      case Localization.initial:
        if (ref.read(prefsProvider).getString("lang") != null) {
          if (ref.read(prefsProvider).getString("lang") == "en") {
            state = LocalizationSuccess(isSelected: "en");
          } else {
            state = LocalizationSuccess(isSelected: "ar");
          }
        }

      case Localization.english:
        ref.read(prefsProvider).setString("lang", "en");
        state = LocalizationSuccess(isSelected: "en");
      case Localization.arabic:
        ref.read(prefsProvider).setString("lang", "ar");
        state = LocalizationSuccess(isSelected: "ar");
    }
  }
}

final localizationProvider =
    NotifierProvider<LocalizationNotifier, LocalizationState>(
      LocalizationNotifier.new,
    );
