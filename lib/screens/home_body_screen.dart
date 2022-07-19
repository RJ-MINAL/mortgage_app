import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mortgage_app/providers/navigation_ui_provider.dart';
import 'package:mortgage_app/themes/app_theme.dart';
import 'package:mortgage_app/screens/screens.dart';
import 'package:mortgage_app/widgets/widgets.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavigationUIProvider(),
      child: Scaffold(
        backgroundColor: AppTheme.primary,
        body: _TabScreens(),
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }
}

class _TabScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationModel = Provider.of<NavigationUIProvider>(context);

    return PageView(
      controller: navigationModel.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        const DashboardScreen(),
        const CalculatorScreen(),
        const LoginScreen(),
        DonutChart(),
        // UnimplementedTabScreen(),
      ],
    );
  }
}
