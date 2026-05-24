import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MarathonChart extends StatelessWidget {
  const MarathonChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 10,

          // Remove grid
          gridData: FlGridData(show: false),

          // Remove border
          borderData: FlBorderData(show: false),

          // Axis titles
          titlesData: FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),

            // Bottom KM labels
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                interval: 2,
                getTitlesWidget: (value, meta) {
                  return Text(
                    '${value.toInt()}km',
                    style: context.text.bodySmall,
                  );
                },
              ),
            ),
          ),

          // Curved line
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              curveSmoothness: 0.35,

              // Chart points
              spots: const [
                FlSpot(0, 2),
                FlSpot(2, 4),
                FlSpot(4, 3),
                FlSpot(6, 5),
                FlSpot(8, 7),
                FlSpot(10, 6),
              ],

              // Gradient line
              gradient: const LinearGradient(
                colors: [Color(0xff3ec7ff), Color(0xffff5c8a)],
              ),

              barWidth: 4,

              // Hide dots
              dotData: FlDotData(show: false),

              // Hide area below line
              belowBarData: BarAreaData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}
