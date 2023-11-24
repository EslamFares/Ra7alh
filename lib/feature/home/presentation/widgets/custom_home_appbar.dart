import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/style/app_text_styles.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/small_icon_button.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({
    super.key,
    required this.onTap,
    this.leadingIcon,
  });
  final Function onTap;
  final IconData? leadingIcon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      // shadowColor: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 0,
      leading: SmallIconButton(
        icon: leadingIcon ?? FontAwesomeIcons.equals,
        onPressed: onTap,
        iconSize: 30,
        color: AppColors.blue,
      ),
      actions: [
        Text(AppStrings.appName,
            style: AppTextStyles.font22PacificoBlueW400.copyWith(fontSize: 25)),
        const SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
