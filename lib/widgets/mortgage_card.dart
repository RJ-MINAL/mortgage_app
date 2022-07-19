import 'package:flutter/material.dart';
import 'package:mortgage_app/themes/app_theme.dart';
import 'package:mortgage_app/widgets/labeled_card_container.dart';

class MortgageCard extends StatelessWidget {
  const MortgageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LabeledCardContainer(
      title: 'My Mortgage',
      subtitle: '961 Willoughby Ave',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/img/house.png'),
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(
            '\$440,000',
            style: TextStyle(
                fontSize: 50,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold),
          ),
          const Text('Principal Outstanding', style: TextStyle(fontSize: 20)),
          const SizedBox(
            height: 20,
          ),
          const _CustomDashboardRow(label1: 'Next Payment', label2: '\$4,372'),
          const _CustomDashboardRow(
              label1: 'Due Date', label2: 'March 1, 2020'),
          const _CustomDashboardRow(label1: 'Last Payment', label2: '\$4,372'),
          const _CustomDashboardRow(
              label1: 'Last Payment Date', label2: 'February 1, 2020'),
          const SizedBox(height: 30),
          const Text(
            '_______',
            style: TextStyle(
                fontWeight: FontWeight.w900, color: AppTheme.fontColor),
          )
        ],
      ),
    );
  }
}

class _CustomDashboardRow extends StatelessWidget {
  final String label1;
  final String label2;

  const _CustomDashboardRow({
    Key? key,
    required this.label1,
    required this.label2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label1,
              style: const TextStyle(fontSize: 20, color: AppTheme.fontColor)),
          Text(label2,
              style: const TextStyle(fontSize: 20, color: AppTheme.primary)),
        ],
      ),
    );
  }
}
