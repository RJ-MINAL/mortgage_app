import 'package:flutter/material.dart';
import 'package:mortgage_app/themes/app_theme.dart';

class CalculatorCard extends StatefulWidget {
  const CalculatorCard({Key? key}) : super(key: key);

  @override
  State<CalculatorCard> createState() => _CalculatorCardState();
}

class _CalculatorCardState extends State<CalculatorCard> {
  double _slider1Value = 4.5;
  double _slider2Value = 20;

  @override
  Widget build(BuildContext context) {
    const headerTitleStyle = TextStyle(
        fontSize: 38, fontWeight: FontWeight.bold, color: AppTheme.fontColor);

    const textStyle = TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: AppTheme.fontColor);

    return _CalculatorCardContainer(
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mortgage Calculator', style: headerTitleStyle),
            const SizedBox(height: 30),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('PROPERTY VALUE', style: textStyle),
                  Text('TERM', style: textStyle),
                ]),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                width: 300,
                child: TextFormField(
                  initialValue: '500,000',
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.end,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppTheme.fontColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppTheme.fontColor),
                      ),
                      contentPadding: EdgeInsets.only(right: 20),
                      prefixIcon: Icon(Icons.attach_money_outlined)),
                ),
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  // elevation: 0,
                  color: AppTheme.primary,
                  onPressed: () => {},
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '15 years fixed',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ))),
            ]),
            const SizedBox(height: 20),
            const Text('INTEREST RATE', style: textStyle),
            Slider(
              min: 0,
              max: 9,
              divisions: 6,
              label: "${_slider1Value.toString()}%",
              activeColor: AppTheme.primary,
              value: _slider1Value,
              onChanged: (value) {
                _slider1Value = value;
                setState(() {});
              },
            ),
            Container(
              alignment: Alignment.center,
              child: Text("${_slider1Value.toString()}%",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('DOWN PAYMENT', style: textStyle),
                  Text('\$100,000', style: textStyle),
                ]),
            const SizedBox(height: 10),
            Slider(
              min: 0,
              max: 40,
              activeColor: AppTheme.primary,
              value: _slider2Value,
              onChanged: (value) {
                _slider2Value = value;
                setState(() {});
              },
            ),
            Container(
              alignment: Alignment.center,
              child: Text("${_slider2Value.truncate().toString()}%",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: const Text('Advanced',
                  style: TextStyle(
                    color: AppTheme.primary,
                    fontSize: 18,
                  )),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: const Text(
                '_______',
                style: TextStyle(
                    fontWeight: FontWeight.w900, color: AppTheme.fontColor),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class _CalculatorCardContainer extends StatelessWidget {
  final Widget child;

  const _CalculatorCardContainer({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: child,
      ),
    );
  }
}
