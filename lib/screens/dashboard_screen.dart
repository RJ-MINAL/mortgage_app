import 'package:flutter/material.dart';
import 'package:mortgage_app/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  final _headerTitleStyle = const TextStyle(
      fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text('My Dashboard', style: _headerTitleStyle),
              ),
              const MortgageCard(),
              const _LinkedAccountsCard()
            ],
          ),
        ),
      ),
    );
  }
}

class _LinkedAccountsCard extends StatelessWidget {
  const _LinkedAccountsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LabeledCardContainer(
      title: 'Linked Accounts',
      subtitle: 'Citi Savings 6445',
      child: SizedBox(height: 500),
    );
  }
}
