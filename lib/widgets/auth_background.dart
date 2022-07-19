import 'package:flutter/material.dart';
import 'package:mortgage_app/themes/app_theme.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: _purpleBackground(),
      child: Stack(
        children: [
          _HeaderIcon(),
          child,
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => const BoxDecoration(
      gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [Color.fromRGBO(63, 63, 156, 1), AppTheme.primary]));
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: const Icon(Icons.person_pin, color: Colors.white, size: 100),
      ),
    );
  }
}
