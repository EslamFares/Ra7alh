import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:ra7alh/core/utils/app_colors.dart';
import 'package:ra7alh/feature/cart/presentation/view/cart_view.dart';
import 'package:ra7alh/feature/home/presentation/cubit/home_cubit.dart';
import 'package:ra7alh/feature/home/presentation/view/home_view.dart';
import 'package:ra7alh/feature/profile/presentation/view/profile_view.dart';
import 'package:ra7alh/feature/search/presentation/view/search_view.dart';

PersistentTabController btmNavController =
    PersistentTabController(initialIndex: 0);

class HomeBottomNavBarView extends StatelessWidget {
  const HomeBottomNavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: btmNavController,
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.blueLight,
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      )),
      screens: buildScreens(),
      items: navBarsItems(),
    );
  }
}

List<Widget> buildScreens() {
  return [
    BlocProvider(
        create: (context) => HomeCubit()..getHistoricalPeriodData(),
        child: const HomeView()),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(FontAwesomeIcons.house),
      title: ("Home"),
      activeColorPrimary: AppColors.blue,
      inactiveColorPrimary: AppColors.grayLight,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(FontAwesomeIcons.cartShopping),
      title: ("cart"),
      activeColorPrimary: AppColors.blue,
      inactiveColorPrimary: AppColors.grayLight,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(FontAwesomeIcons.magnifyingGlass),
      title: ("search"),
      activeColorPrimary: AppColors.blue,
      inactiveColorPrimary: AppColors.grayLight,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(FontAwesomeIcons.userLarge),
      title: ("profile"),
      activeColorPrimary: AppColors.blue,
      inactiveColorPrimary: AppColors.grayLight,
    ),
  ];
}
