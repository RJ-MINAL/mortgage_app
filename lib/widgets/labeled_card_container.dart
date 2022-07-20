import 'package:flutter/material.dart';
import 'package:mortgage_app/widgets/widgets.dart';

class LabeledCardContainer extends StatelessWidget {
  final Widget child;
  final String title;
  final String subtitle;

  const LabeledCardContainer({
    Key? key,
    required this.child,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const titleStyle = TextStyle(
        color: Colors.white70, fontSize: 18, fontWeight: FontWeight.bold);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              title.toUpperCase(),
              style: titleStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: _cardShapeDecoration(),
            // child: child,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  FlexibleText(
                    label: subtitle,
                    size: 20,
                    color: Colors.black87,
                  )
                ],
              ),
              SizedBox(
                child: child,
              )
            ]),
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardShapeDecoration() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0, 5),
            )
          ]);
}
