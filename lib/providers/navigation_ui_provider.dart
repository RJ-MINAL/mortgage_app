import 'package:flutter/material.dart';

class NavigationUIProvider with ChangeNotifier {
  int _currentTab = 0;
  final PageController _pageController = PageController();

  int get currentTab => _currentTab;

  set currentTab(int value) {
    _currentTab = value;

    _pageController.animateToPage(value,
        duration: const Duration(milliseconds: 250), curve: Curves.easeOut);

    notifyListeners();
  }

  PageController get pageController => _pageController;
}
