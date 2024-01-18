import 'package:dashboard_ui/style/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarCharComponent extends StatelessWidget {
  const BarCharComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        titlesData:
            const FlTitlesData(leftTitles: AxisTitles(axisNameSize: 20)),
        gridData:
            const FlGridData(drawHorizontalLine: true, horizontalInterval: 30),   
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 10,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg),
              ),
              BarChartRodData(
                toY: 50,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg),
              ),
              BarChartRodData(
                toY: 40,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg),
              ),
              BarChartRodData(
                toY: 60,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg),
              ),
              BarChartRodData(
                toY: 70,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg),
              ),
              BarChartRodData(
                toY: 80,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                    toY: 90, show: true, color: AppColors.barBg),
              ),
            ],
          )
        ],
      ),
      swapAnimationDuration: const Duration(microseconds: 150),
      swapAnimationCurve: Curves.linear,
    );
  }
}
