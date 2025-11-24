import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/components/custom_icon_button_pop.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_enums.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/features/data/providers/localization_provider.dart';
import 'package:food_ninja/features/data/providers/provider.dart';

class LanguageWidget extends ConsumerStatefulWidget {
  const LanguageWidget({super.key});

  @override
  ConsumerState<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends ConsumerState<LanguageWidget> {
  late String isSelectedLang;
  getLang() {
    isSelectedLang = ref.read(prefsProvider).getString("lang") ?? "en";
  }

  @override
  void initState() {
    getLang();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: context.height * 0.010),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {
              ref
                  .read(localizationProvider.notifier)
                  .localizationFunc(Localization.arabic);
              setState(() {
                isSelectedLang = "ar";
              });
            },
            leading: Text("🇸🇦", style: context.kTextTheme.titleMedium),
            title: Text(
              context.kAppLocalizations.arabic,
              style: context.kTextTheme.titleMedium!.copyWith(
                color: context.kChangeTheme.hintColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: CustomIconButton(
              icon: Icon(
                isSelectedLang == "ar"
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: AppColors.kPrimaryColor,
              ),
            ),
          ),
          Divider(color: context.kChangeTheme.primaryColorLight),
          ListTile(
            onTap: () {
              ref
                  .read(localizationProvider.notifier)
                  .localizationFunc(Localization.english);
              setState(() {
                isSelectedLang = "en";
              });
            },
            leading: Text("🇺🇸", style: context.kTextTheme.titleMedium),
            title: Text(
              context.kAppLocalizations.english,
              style: context.kTextTheme.titleMedium!.copyWith(
                color: context.kChangeTheme.hintColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: CustomIconButton(
              icon: Icon(
                isSelectedLang == "en"
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: AppColors.kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
