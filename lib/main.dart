import 'package:flutter/material.dart';
import 'package:mortgage_app/screens/screens.dart';
import 'package:mortgage_app/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mortage App',
      theme: AppTheme.lightTheme,
      initialRoute: 'login',
      routes: {
        'home': (_) => const HomeBodyScreen(),
        'login': (_) => const LoginScreen(),
        'register': (_) => const RegisterScreen(),
      },
    );
  }
}
