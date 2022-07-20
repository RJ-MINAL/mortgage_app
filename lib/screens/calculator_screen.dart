import 'package:flutter/material.dart';
import 'package:mortgage_app/widgets/widgets.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    const accentStyle = TextStyle(
      color: Color.fromRGBO(104, 240, 174, 1),
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CalculatorCard(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Stack(children: [
                DonutChart(),
                const Positioned(
                  bottom: 70,
                  right: 70,
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text('62%', style: accentStyle)),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
