import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:xiao_tally/components/widgets/indicator.dart';
import 'package:xiao_tally/res/app_res.dart';

// class PieChartSample1 extends StatefulWidget {
//   const PieChartSample1({super.key});

//   @override
//   State<StatefulWidget> createState() => PieChartSample1State();
// }

// class PieChartSample1State extends State {
//   int touchedIndex = -1;

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 1.3,
//       child: Column(
//         children: <Widget>[
//           const SizedBox(
//             height: 28,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Indicator(
//                 color: AppColors.contentColorBlue,
//                 text: '购物',
//                 isSquare: false,
//                 size: touchedIndex == 0 ? 18 : 16,
//                 textColor: touchedIndex == 0
//                     ? AppColors.mainTextColor1
//                     : AppColors.mainTextColor3,
//               ),
//               Indicator(
//                 color: AppColors.contentColorYellow,
//                 text: '餐饮',
//                 isSquare: false,
//                 size: touchedIndex == 1 ? 18 : 16,
//                 textColor: touchedIndex == 1
//                     ? AppColors.mainTextColor1
//                     : AppColors.mainTextColor3,
//               ),
//               Indicator(
//                 color: AppColors.contentColorPink,
//                 text: 'Three',
//                 isSquare: false,
//                 size: touchedIndex == 2 ? 18 : 16,
//                 textColor: touchedIndex == 2
//                     ? AppColors.mainTextColor1
//                     : AppColors.mainTextColor3,
//               ),
//               Indicator(
//                 color: AppColors.contentColorGreen,
//                 text: 'Four',
//                 isSquare: false,
//                 size: touchedIndex == 3 ? 18 : 16,
//                 textColor: touchedIndex == 3
//                     ? AppColors.mainTextColor1
//                     : AppColors.mainTextColor3,
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 18,
//           ),
//           Expanded(
//             child: AspectRatio(
//               aspectRatio: 1,
//               child: PieChart(
//                 PieChartData(
//                   pieTouchData: PieTouchData(
//                     touchCallback: (FlTouchEvent event, pieTouchResponse) {
//                       setState(() {
//                         if (!event.isInterestedForInteractions ||
//                             pieTouchResponse == null ||
//                             pieTouchResponse.touchedSection == null) {
//                           touchedIndex = -1;
//                           return;
//                         }
//                         touchedIndex = pieTouchResponse
//                             .touchedSection!.touchedSectionIndex;
//                       });
//                     },
//                   ),
//                   startDegreeOffset: 180,
//                   borderData: FlBorderData(
//                     show: false,
//                   ),
//                   sectionsSpace: 1,
//                   centerSpaceRadius: 0,
//                   sections: showingSections(),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   List<PieChartSectionData> showingSections() {
//     return List.generate(
//       4,
//       (i) {
//         final isTouched = i == touchedIndex;
//         const color0 = AppColors.contentColorBlue;
//         const color1 = AppColors.contentColorYellow;
//         const color2 = AppColors.contentColorPink;
//         const color3 = AppColors.contentColorGreen;

//         switch (i) {
//           case 0:
//             return PieChartSectionData(
//               color: color0,
//               value: 25,
//               title: '',
//               radius: 80,
//               titlePositionPercentageOffset: 0.55,
//               borderSide: isTouched
//                   ? const BorderSide(
//                       color: AppColors.contentColorWhite, width: 6)
//                   : BorderSide(
//                       color: AppColors.contentColorWhite.withOpacity(0)),
//             );
//           case 1:
//             return PieChartSectionData(
//               color: color1,
//               value: 25,
//               title: '',
//               radius: 65,
//               titlePositionPercentageOffset: 0.55,
//               borderSide: isTouched
//                   ? const BorderSide(
//                       color: AppColors.contentColorWhite, width: 6)
//                   : BorderSide(
//                       color: AppColors.contentColorWhite.withOpacity(0)),
//             );
//           case 2:
//             return PieChartSectionData(
//               color: color2,
//               value: 25,
//               title: '',
//               radius: 60,
//               titlePositionPercentageOffset: 0.6,
//               borderSide: isTouched
//                   ? const BorderSide(
//                       color: AppColors.contentColorWhite, width: 6)
//                   : BorderSide(
//                       color: AppColors.contentColorWhite.withOpacity(0)),
//             );
//           case 3:
//             return PieChartSectionData(
//               color: color3,
//               value: 25,
//               title: '',
//               radius: 70,
//               titlePositionPercentageOffset: 0.55,
//               borderSide: isTouched
//                   ? const BorderSide(
//                       color: AppColors.contentColorWhite, width: 6)
//                   : BorderSide(
//                       color: AppColors.contentColorWhite.withOpacity(0)),
//             );
//           default:
//             throw Error();
//         }
//       },
//     );
//   }
// }

//这是我重新写的扇形图，原来的被注释掉了

class PieChartSample3 extends StatefulWidget {
  const PieChartSample3({super.key});

  @override
  State<StatefulWidget> createState() => PieChartSample3State();
}

class PieChartSample3State extends State {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              touchCallback: (FlTouchEvent event, pieTouchResponse) {
                setState(() {
                  if (!event.isInterestedForInteractions ||
                      pieTouchResponse == null ||
                      pieTouchResponse.touchedSection == null) {
                    touchedIndex = -1;
                    return;
                  }
                  touchedIndex =
                      pieTouchResponse.touchedSection!.touchedSectionIndex;
                });
              },
            ),
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
            centerSpaceRadius: 0,
            sections: showingSections(),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 110.0 : 100.0;
      final widgetSize = isTouched ? 55.0 : 40.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.contentColorBlue,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgeWidget: _Badge(
              'assets/icons/ophthalmology-svgrepo-com.svg',
              size: widgetSize,
              borderColor: AppColors.contentColorBlack,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.contentColorYellow,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgeWidget: _Badge(
              'assets/icons/librarian-svgrepo-com.svg',
              size: widgetSize,
              borderColor: AppColors.contentColorBlack,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 2:
          return PieChartSectionData(
            color: AppColors.contentColorPurple,
            value: 16,
            title: '16%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgeWidget: _Badge(
              'assets/icons/fitness-svgrepo-com.svg',
              size: widgetSize,
              borderColor: AppColors.contentColorBlack,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 3:
          return PieChartSectionData(
            color: AppColors.contentColorGreen,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgeWidget: _Badge(
              'assets/icons/worker-svgrepo-com.svg',
              size: widgetSize,
              borderColor: AppColors.contentColorBlack,
            ),
            badgePositionPercentageOffset: .98,
          );
        default:
          throw Exception('Oh no');
      }
    });
  }
}

class _Badge extends StatelessWidget {
  const _Badge(
    this.svgAsset, {
    required this.size,
    required this.borderColor,
  });
  final String svgAsset;
  final double size;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: Text("XXX"),
      ),
    );
  }
}
