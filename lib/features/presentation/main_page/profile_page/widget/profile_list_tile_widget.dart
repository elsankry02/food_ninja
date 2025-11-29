import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/features/data/providers/get/get_user_provider.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/extension/extension.dart';

class ProfileListTileWidget extends ConsumerStatefulWidget {
  const ProfileListTileWidget({super.key});

  @override
  ConsumerState<ProfileListTileWidget> createState() =>
      _ProfileListTileWidgetState();
}

class _ProfileListTileWidgetState extends ConsumerState<ProfileListTileWidget> {
  @override
  void initState() {
    Future.microtask(() {
      ref.read(getUserProvider.notifier).getUser();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(getUserProvider);
    if (state is GetUserSuccess) {
      return ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(context.height * 0.015),
          child: CachedNetworkImage(
            imageUrl: state.userModel.avatarUrl ?? AppImages.kPlaceHolder,
            height: context.height * 0.070,
            width: context.height * 0.070,
            fit: BoxFit.cover,
            placeholder: (context, url) => UnconstrainedBox(
              child: CircularProgressIndicator(
                color: context.kChangeTheme.hintColor,
              ),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        title: Text(
          state.userModel.name ?? "Guest",
          style: context.kTextTheme.titleLarge!.copyWith(
            color: context.kChangeTheme.hintColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          state.userModel.email,
          style: context.kTextTheme.titleMedium!.copyWith(
            color: AppColors.kGrey,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    } else if (state is GetUserFailure) {
      return Text(
        state.errMessage,
        style: context.kTextTheme.titleMedium!.copyWith(
          color: context.kChangeTheme.hintColor,
          fontWeight: FontWeight.w600,
        ),
      );
    }
    return UnconstrainedBox(
      child: CircularProgressIndicator(color: context.kChangeTheme.hintColor),
    );
  }
}
