import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../model/chart_model.dart';
import '../../common/common_appbar.dart';

class PersonalProfileInsightScreen extends StatefulWidget {
  const PersonalProfileInsightScreen({Key? key}) : super(key: key);

  @override
  State<PersonalProfileInsightScreen> createState() =>
      _PersonalProfileInsightScreenState();
}

class _PersonalProfileInsightScreenState
    extends State<PersonalProfileInsightScreen> {
  String daysValue = "";
  List<String> daysItem = ["10", "20", "30", "40"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: socialBack,
      appBar: const SocialMediaSettingAppBar(title: "Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Profile Insights",
                style: TextStyle(
                    fontSize: 20,
                    color: blackButtonColor,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Take a deep look at how your account and content are performing",
                style: TextStyle(
                    fontSize: 12,
                    color: blackButtonColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      "Profile Activity",
                      style: TextStyle(
                          fontSize: 12.5,
                          color: blackButtonColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 80,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none),
                          focusColor: Colors.white,
                          hint: Text(
                            "Duration",
                            style: TextStyle(
                                fontSize: 12.5,
                                color: blackButtonColor,
                                fontWeight: FontWeight.w600),
                          ),
                          isExpanded: true,
                          style: TextStyle(
                              fontSize: 12.5,
                              color: blackButtonColor,
                              fontWeight: FontWeight.w600),
                          icon: const Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.keyboard_arrow_down)),
                          items: daysItem.map((list) {
                            return DropdownMenuItem<String>(
                              value: list,
                              child: Text("$list Days"),
                            );
                          }).toList(),
                          value: daysValue.isEmpty ? null : daysValue,
                          onChanged: (val) {
                            setState(() {
                              daysValue = val.toString();
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return 'Select Your Primary Person';
                            } else {}

                            return null;
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                width: double.infinity,
                height: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: chipColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "Account Reached",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 190,
                      child: SfCartesianChart(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        // enableSideBySideSeriesPlacement: false,
                        borderWidth: 0,
                        plotAreaBorderWidth: 0,
                        primaryXAxis: CategoryAxis(
                          tickPosition: TickPosition.outside,
                          // minorTicksPerInterval: 0,
                          majorTickLines: const MajorTickLines(
                              size: 2, color: Colors.transparent),
                          axisLine: const AxisLine(width: 0),

                          maximumLabels: 8,
                          labelStyle: const TextStyle(
                              color: Colors.transparent, fontSize: 0),
                          majorGridLines: const MajorGridLines(width: 0),
                        ),
                        primaryYAxis: NumericAxis(isVisible: false),
                        tooltipBehavior: TooltipBehavior(enable: true),
                        series: <ChartSeries<ChartData, String>>[
                          ColumnSeries<ChartData, String>(
                              borderRadius: BorderRadius.circular(30),
                              dataSource: [
                                ChartData('jan', 30),
                                ChartData('Feb', 20),
                                ChartData('Mar', 40),
                                ChartData('Apr', 25),
                                ChartData('May', 20),
                                ChartData('Jun', 30),
                                ChartData('Jul', 35),
                                ChartData('Aug', 45),
                              ],
                              width: 0.92,
                              // trackColor: Colors.black,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              name: 'Month',
                              color: Colors.white.withOpacity(.22)),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      child: Text(
                        "Account reached  - 32K",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "Profile Visit  - 132K",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Account Insights",
                style: TextStyle(
                    fontSize: 20,
                    color: blackButtonColor,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: chipColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Account reached",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "20%",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: whiteColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Impression",
                      style: TextStyle(
                          color: blackButtonColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "8%",
                      style: TextStyle(
                          color: blackButtonColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
