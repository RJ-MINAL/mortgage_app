import 'package:flutter/material.dart';
import 'package:mortgage_app/themes/app_theme.dart';
import 'package:pie_chart/pie_chart.dart';

class DonutChart extends StatelessWidget {
  final dataMap = <String, double>{
    "Principal & Interest": 13,
    "Insurance": 4,
    "Property Taxes": 3,
  };

  final colorList = <Color>[
    const Color.fromRGBO(104, 240, 174, 1),
    const Color.fromRGBO(255, 116, 143, 1),
    const Color.fromRGBO(255, 152, 0, 1),
  ];

  DonutChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: PieChart(
          dataMap: dataMap,
          chartType: ChartType.ring,
          initialAngleInDegree: 270,
          chartLegendSpacing: 40,
          centerText: "\$4,372\nper month",
          centerTextStyle: TextStyle(
              background: Paint()..color = AppTheme.primary,
              color: Colors.white,
              // backgroundColor: AppTheme.primary,
              fontSize: MediaQuery.of(context).size.width * 0.07,
              fontWeight: FontWeight.bold),
          chartRadius: MediaQuery.of(context).size.width * 0.5,
          ringStrokeWidth: 45,
          baseChartColor: Colors.grey[50]!.withOpacity(0.15),
          colorList: colorList,
          legendOptions: const LegendOptions(
              showLegendsInRow: true,
              legendPosition: LegendPosition.bottom,
              showLegends: true,
              legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18)),
          chartValuesOptions: const ChartValuesOptions(
            showChartValueBackground: false,
            showChartValues: false,
          ),
          totalValue: 20,
        ));
  }
}
