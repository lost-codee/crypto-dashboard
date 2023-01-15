import 'package:crypto_dashboard/core/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: paiChartSelectionDatas,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding),
                Text(
                  "\$20.325",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text(
                  "+2.3%",
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSelectionDatas = [
  PieChartSectionData(
    color: const Color.fromARGB(255, 238, 2, 238),
    value: 35,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: const Color.fromARGB(255, 242, 200, 46),
    value: 15,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: const Color.fromARGB(255, 39, 238, 148),
    value: 5,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 45,
    showTitle: false,
    radius: 16,
  ),
];
