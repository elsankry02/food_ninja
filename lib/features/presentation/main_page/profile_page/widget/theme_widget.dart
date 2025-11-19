import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/components/custom_icon_button_pop.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_enums.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/features/data/providers/change_theme_provider.dart';
import 'package:food_ninja/features/data/providers/provider.dart';

class ThemeWidget extends ConsumerStatefulWidget {
  const ThemeWidget({super.key});

  @override
  ConsumerState<ThemeWidget> createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends ConsumerState<ThemeWidget> {
  late bool isSelectedTheme;
  getLang() {
    isSelectedTheme = ref.read(prefsProvider).getBool("changeTheme") ?? true;
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
                  .read(changeThemeProvider.notifier)
                  .changeThemeFunc(ChangeTheme.light);
              setState(() {
                isSelectedTheme = true;
              });
            },
            title: Text("Light Theme"),
            trailing: CustomIconButton(
              icon: Icon(
                isSelectedTheme == true
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
                  .read(changeThemeProvider.notifier)
                  .changeThemeFunc(ChangeTheme.dark);
              setState(() {
                isSelectedTheme = false;
              });
            },
            title: Text("Dark Theme"),
            trailing: CustomIconButton(
              icon: Icon(
                isSelectedTheme == false
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
