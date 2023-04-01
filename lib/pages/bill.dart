import 'package:flutter/material.dart';
import 'package:protobuf/protobuf.dart';
import 'package:xiao_tally/api/db/record.dart';
import 'package:xiao_tally/components/chart/bar.dart';
import 'package:xiao_tally/components/common/page.dart';
import 'package:xiao_tally/config/theme.dart';

class BillPage extends StatefulWidget {
  const BillPage({super.key, required this.title});

  final String title;

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  @override
  Widget build(BuildContext context) {
    return XPage(
        title: widget.title,
        elevation: 0,
        body: ListView(children: [
          const BillChart(),
          const AccountStatistics(),
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "账单明细",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  BlankLine(blank: 15),
                  AccountDetail(icon: Icons.add, num: -15, note: '吃饭'),
                  BlankLine(blank: 15),
                  AccountDetail(icon: Icons.add, num: -315, note: '被讹钱'),
                  BlankLine(blank: 15),
                  AccountDetail(icon: Icons.add, num: 1000, note: '奖金'),
                  BlankLine(blank: 15),
                  AccountDetail(icon: Icons.add, num: 1000, note: '奖金'),
                  BlankLine(blank: 15),
                  AccountDetail(icon: Icons.add, num: 1000, note: '奖金'),
                  BlankLine(blank: 15),
                  AccountDetail(icon: Icons.add, num: 1000, note: '奖金'),
                  BlankLine(blank: 15),
                  AccountDetail(icon: Icons.add, num: 1000, note: '奖金'),
                ],
              ))
        ]));
  }
}

//上半部分图表
class BillChart extends StatefulWidget {
  const BillChart({super.key});

  @override
  State<BillChart> createState() => _BillChartState();
}

class _BillChartState extends State<BillChart> {
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
          Column(children: [
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: const [
                          Text(
                            '月支出',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
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
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                            '3月24日支出:￥0.00',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: const [
                          Text(
                            '月收入',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
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
            SizedBox(
              height: 250,
              width: 450,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsetsDirectional.all(10),
                child: BarChartSample2(),
              ),
            )
          ]),
        ],
      ),
    );
  }
}

//账户统计，月结余，日均消费
class AccountStatistics extends StatefulWidget {
  const AccountStatistics({super.key});

  @override
  State<AccountStatistics> createState() => _AccountStatisticsState();
}

class _AccountStatisticsState extends State<AccountStatistics> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 450,
        child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
            child: Row(children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 5),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: const [
                        Text(
                          '月结余',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        Text('\￥336.00',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.green,
                                fontSize: 17,
                                fontWeight: FontWeight.w700)),
                      ]),
                    ]),
              )),
              Expanded(
                  child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: const [
                        Text(
                          '日均支出',
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
                    ]),
              ))
            ])));
  }
}

//账单明细
class AccountDetail extends StatefulWidget {
  const AccountDetail(
      {Key? key, required this.note, required this.num, required this.icon});
  final String note;
  final double num;
  final IconData icon;
  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  Color _getTextColor() {
    if (widget.num > 0) {
      return Colors.green;
    } else if (widget.num < 0) {
      return Colors.red;
    } else {
      return Colors.yellow;
    }
  }

  String _getTextSym() {
    if (widget.num > 0) {
      return "+";
    } else {
      return " ";
    }
  }

  @override
  Widget build(BuildContext context) {
    //分别获取正负号和颜色
    Color textColor = _getTextColor();
    String textSym = _getTextSym();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(widget.icon),
            Text(
              widget.note,
              style: const TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        Row(
          children: [
            Text(
              textSym,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              widget.num.toString(),
              style: TextStyle(
                fontFamily: 'Poppins',
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
