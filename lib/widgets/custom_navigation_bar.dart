import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:mortgage_app/providers/navigation_ui_provider.dart';
import 'package:mortgage_app/themes/app_theme.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationModel = Provider.of<NavigationUIProvider>(context);

    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
          fixedColor: AppTheme.primary,
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: navigationModel.currentTab,
          onTap: (i) => navigationModel.currentTab = i,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.screwdriverWrench),
                label: 'calculator'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidUser), label: 'profile'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.bars), label: 'bars'),
          ]),
    );
  }
}
