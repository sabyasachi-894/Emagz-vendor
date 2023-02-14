import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constant/colors.dart';
import '../../../model/chart_model.dart';

class ChartCard extends StatelessWidget {
  const ChartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment(-0.3, 1),
                end: Alignment(0.8, -1.5),
                colors: [
                  Color(0xff0F0AA4),
                  Color(0xff2992E3),
                ]),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "₹ 400k",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Total Sales",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 9,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SfCartesianChart(
                // margin: EdgeInsets.only(bottom: 10),
                // enableSideBySideSeriesPlacement: false,
                borderWidth: 0,
                plotAreaBorderWidth: 0,
                primaryXAxis: CategoryAxis(
                  tickPosition: TickPosition.outside,
                  // minorTicksPerInterval: 0,
                  majorTickLines:
                      const MajorTickLines(size: 2, color: Colors.transparent),
                  axisLine: const AxisLine(width: 0),
                  maximumLabels: 12,
                  labelStyle: const TextStyle(color: Colors.white),
                  majorGridLines: const MajorGridLines(width: 0),
                ),
                primaryYAxis: NumericAxis(isVisible: false),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<ChartData, String>>[
                  ColumnSeries<ChartData, String>(
                      borderRadius: BorderRadius.circular(10),
                      dataSource: [
                        ChartData('jan', 15),
                        ChartData('Feb', 25),
                        ChartData('Mar', 30),
                        ChartData('Apr', 40),
                        ChartData('May', 50),
                        ChartData('Jun', 45),
                        ChartData('Jul', 40),
                        ChartData('Aug', 30),
                        ChartData('Sep', 50),
                        ChartData('Oct', 60),
                        ChartData('Nov', 70),
                        ChartData('Dec', 80),
                      ],
                      width: 0.5,
                      // trackColor: Colors.black,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      name: 'Product',
                      color: Colors.white),
                ],
              ),
              // SizedBox(height: 10,),
            ],
          ),
        ),
      ],
    );
  }
}
