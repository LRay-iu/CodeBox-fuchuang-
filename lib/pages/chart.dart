import 'package:flutter/material.dart';
import 'package:xiao_tally/components/chart/pie.dart';
import 'package:xiao_tally/components/common/page.dart';
import 'package:xiao_tally/config/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key, required this.title});

  final String title;

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return XPage(
        title: widget.title,
        elevation: 2,
        body: Container(
            height: 1000,
            child: ListView(
              children: [
                const BillPiechart(),
                Container(
                  margin: EdgeInsetsDirectional.all(15),
                  child: Column(
                    children: const [
                      BlankLine(
                        blank: 10,
                      ),
                      ConsumptionDetail(
                        icon: Icons.add,
                        Consumption: 200,
                        TotalConsumption: 2000,
                        classification: "摸鱼",
                      ),
                      BlankLine(
                        blank: 10,
                      ),
                      ConsumptionDetail(
                        icon: Icons.add,
                        Consumption: 300,
                        TotalConsumption: 2000,
                        classification: "摸鱼",
                      ),
                      BlankLine(
                        blank: 10,
                      ),
                      ConsumptionDetail(
                        icon: Icons.add,
                        Consumption: 900,
                        TotalConsumption: 2000,
                        classification: "摸鱼",
                      ),
                      BlankLine(
                        blank: 10,
                      ),
                      ConsumptionDetail(
                        icon: Icons.add,
                        Consumption: 400,
                        TotalConsumption: 2000,
                        classification: "摸鱼",
                      ),
                      BlankLine(
                        blank: 10,
                      ),
                      ConsumptionDetail(
                        icon: Icons.add,
                        Consumption: 500,
                        TotalConsumption: 2000,
                        classification: "摸鱼",
                      ),
                      BlankLine(
                        blank: 10,
                      ),
                      ConsumptionDetail(
                        icon: Icons.add,
                        Consumption: 200,
                        TotalConsumption: 2000,
                        classification: "摸鱼",
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}

class BillPiechart extends StatefulWidget {
  const BillPiechart({super.key});

  @override
  State<BillPiechart> createState() => _BillPiechartState();
}

class _BillPiechartState extends State<BillPiechart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          Container(
            height: 100,
            color: FlutterFlowTheme.of(context).primaryColor,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 367,
                  width: 450,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsetsDirectional.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(children: const [
                                        Text(
                                          '月支出',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text('\￥336.00',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.red,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700)),
                                      ]),
                                    ],
                                  ),
                                )),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(children: const [
                                        Text(
                                          '月收入',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '\￥00.00',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.green,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ])
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
                          PieChartSample3(),
                        ],
                      )),
                ),
              ]),
        ],
      ),
    );
  }
}

class ConsumptionDetail extends StatefulWidget {
  const ConsumptionDetail({
    Key? key,
    required this.icon,
    required this.classification,
    this.TotalConsumption = 1000,
    required this.Consumption,
  });
  final IconData icon;
  final String classification;
  final double TotalConsumption;
  final double Consumption;
  @override
  State<ConsumptionDetail> createState() => _ConsumptionDetailState();
}

class _ConsumptionDetailState extends State<ConsumptionDetail> {
  double _getPercent() {
    return widget.Consumption / widget.TotalConsumption;
  }

  @override
  Widget build(BuildContext context) {
    double percent = _getPercent();
    String PercentPanel = (percent * 100).toString() + "%";
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(children: [
          Icon(
            widget.icon,
            size: 35,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.classification,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                PercentPanel,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              LinearPercentIndicator(
                percent: percent,
                width: MediaQuery.of(context).size.width * 0.5,
                lineHeight: 5,
                animation: true,
                progressColor: Color(0xFF4B39EF),
                backgroundColor: Color(0xFFF1F4F8),
                barRadius: Radius.circular(16),
                padding: EdgeInsets.zero,
              ),
            ],
          )
        ]),
        Row(children: [
          const Text(
            "\￥",
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.red,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          Text(
            widget.Consumption.toString(),
            style: const TextStyle(
                fontFamily: 'Poppins',
                color: Colors.red,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          )
        ])
      ],
    );
  }
}
