import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ExpenseGraphDesign extends StatefulWidget {
  const ExpenseGraphDesign({Key? key}) : super(key: key);

  @override
  State<ExpenseGraphDesign> createState() => _ExpenseGraphDesignState();
}

class _ExpenseGraphDesignState extends State<ExpenseGraphDesign> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 30,
          minY: 0,
          maxY: 10,
          backgroundColor: Colors.transparent,
          borderData: FlBorderData(border: Border.all(color: Colors.transparent)),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 4),
                const FlSpot(1, 5),
                const FlSpot(2, 8),
                const FlSpot(3, 6.2),
                const FlSpot(4, 6),
                const FlSpot(5, 8),
                const FlSpot(6, 9),
                const FlSpot(7, 7),
                const FlSpot(8, 6),
                const FlSpot(9, 7.8),
                const FlSpot(10, 8),
                const FlSpot(11, 5),
                const FlSpot(12, 8),
                const FlSpot(13, 4),
                const FlSpot(14, 7),
                const FlSpot(15, 6),
                const FlSpot(16, 4.7),
                const FlSpot(17, 8),
                const FlSpot(18, 4),
                const FlSpot(19, 9),
                const FlSpot(20, 7),
                const FlSpot(21, 5),
                const FlSpot(22, 8),
                const FlSpot(23, 6.2),
                const FlSpot(24, 6),
                const FlSpot(25, 8),
                const FlSpot(26, 9),
                const FlSpot(27, 7),
                const FlSpot(28, 6),
                const FlSpot(29, 7.8),
                const FlSpot(30, 8),
              ],
              isCurved: true,
              gradient: const LinearGradient(
                colors: [Color(0xFF8bfd3d), Color(0xFFf9fd09)],
              ),
              barWidth: 3,
              belowBarData: BarAreaData(
                show: false,
                gradient: LinearGradient(
                  colors: [
                    Colors.purple.withOpacity(0.2),
                    Colors.pink.withOpacity(0.2),
                  ],
                ),
              ),
              dotData: FlDotData(show: false),
            ),
          ],
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: false,
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(color: Colors.transparent, strokeWidth: 0.8);
            },
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
                reservedSize: 12,
                getTitlesWidget: (value, meta) {
                  String text = '';
                  switch (value.toInt()) {
                    case 1:
                      text = "1";
                      break;
                    case 2:
                      text = "2";
                      break;
                    case 3:
                      text = "3";
                      break;
                    case 4:
                      text = "4";
                      break;
                    case 5:
                      text = "5";
                      break;
                    case 6:
                      text = "6";
                      break;
                    case 7:
                      text = "7";
                      break;
                    case 8:
                      text = "8";
                      break;
                    case 9:
                      text = "9";
                      break;
                    case 10:
                      text = "10";
                      break;
                    default:
                      return Container();
                  }
                  return Text(
                    text,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
