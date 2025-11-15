import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/components/custom_icon_button_pop.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_enums.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/features/data/providers/localization.dart';
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
              context.router.maybePop();
            },
            leading: Text("🇸🇦", style: context.kTextTheme.titleMedium),
            title: Text(context.kAppLocalizations.arabic),
            trailing: CustomIconButton(
              icon: Icon(
                isSelectedLang == "ar"
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: AppColors.kPrimaryColor,
              ),
            ),
          ),
          Divider(color: AppColors.kBorder),
          ListTile(
            onTap: () {
              ref
                  .read(localizationProvider.notifier)
                  .localizationFunc(Localization.english);
              setState(() {
                isSelectedLang = "en";
              });
              context.router.maybePop();
            },
            leading: Text("🇺🇸", style: context.kTextTheme.titleMedium),
            title: Text(context.kAppLocalizations.english),
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
