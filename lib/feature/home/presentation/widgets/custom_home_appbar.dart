import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/style/app_text_styles.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/small_icon_button.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: SmallIconButton(
        icon: FontAwesomeIcons.equals,
        onPressed: () {},
        iconSize: 30,
        color: AppColors.blueDark,
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
