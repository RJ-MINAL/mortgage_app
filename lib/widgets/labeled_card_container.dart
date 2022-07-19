import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: _cardShapeDecoration(),
            // child: child,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Text(subtitle, style: const TextStyle(fontSize: 20))
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
