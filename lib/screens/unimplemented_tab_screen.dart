import 'package:flutter/material.dart';

class UnimplementedTabScreen extends StatelessWidget {
  const UnimplementedTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Unimplemented Screen',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
