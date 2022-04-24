import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:meditation/consts.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData1,
    );
  }
}

LineChartData get sampleData1 => LineChartData(
      lineTouchData: lineTouchData1,
      gridData: FlGridData(show: false),
      titlesData: FlTitlesData(
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))),
      borderData: FlBorderData(show: false),
      lineBarsData: lineBarsData1,
      minX: 0,
      maxX: 14,
      maxY: 4,
      minY: 0,
    );

LineTouchData get lineTouchData1 => LineTouchData(
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(tooltipBgColor: Colors.white10));

List<LineChartBarData> get lineBarsData1 => [
      lineChartBarData1_1,
    ];

LineChartBarData get lineChartBarData1_1 => LineChartBarData(
      isCurved: true,
      color: primaryColor,
      barWidth: 4,
      curveSmoothness: .3,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      spots: const [
        FlSpot(1, 0.5),
        FlSpot(3, 1.5),
        FlSpot(5, 1.4),
        FlSpot(7, 3.4),
        FlSpot(10, 2),
        FlSpot(12, 2.2),
        FlSpot(13, 1.8),
      ],
    );
