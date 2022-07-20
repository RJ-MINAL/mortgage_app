import 'package:flutter/material.dart';
import 'package:mortgage_app/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const titleStyle = TextStyle(
        color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'My Dashboard',
                      style: titleStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              MortgageCard(),
              _LinkedAccountsCard()
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
