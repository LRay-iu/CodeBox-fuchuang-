import 'package:flutter/material.dart';
import 'package:xiao_tally/config/theme.dart';
import './nav_item.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.currentIndex, required this.onTap});

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 68,
      decoration: const BoxDecoration(
        color: Color(0x00EEEEEE),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 68,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        color: Color(0x1A57636C),
                        offset: Offset(0, -10),
                        spreadRadius: 0.1,
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              NavItem(
                index: 0,
                currentIndex: widget.currentIndex,
                onTap: widget.onTap,
              ),
              NavItem(
                index: 1,
                currentIndex: widget.currentIndex,
                onTap: widget.onTap,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: NavItemMiddle()),
                ],
              ),
              NavItem(
                index: 2,
                currentIndex: widget.currentIndex,
                onTap: widget.onTap,
              ),
              NavItem(
                index: 3,
                currentIndex: widget.currentIndex,
                onTap: widget.onTap,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class NavBar extends StatefulWidget {
//   const NavBar({super.key, required this.currentIndex, required this.onTap});

//   final int currentIndex;
//   final ValueChanged<int> onTap;

//   @override
//   State<NavBar> createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return NavigationBarTheme(
//       data: NavigationBarThemeData(
//         labelTextStyle: MaterialStateProperty.all(
//           const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//         ),
//       ),
//       child: NavigationBar(
//         height: 60,
//         backgroundColor: Colors.white,
//         labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
//         animationDuration: const Duration(milliseconds: 888),
//         destinations: const [
//           NavigationDestination(
//             icon: Icon(Icons.home_outlined),
//             selectedIcon: Icon(Icons.home),
//             label: '主页',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.receipt_long_outlined),
//             selectedIcon: Icon(Icons.receipt_long),
//             label: '账单',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.insert_chart_outlined_outlined),
//             selectedIcon: Icon(Icons.insert_chart_outlined),
//             label: '图表',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.person_outline),
//             selectedIcon: Icon(Icons.person),
//             label: '我的',
//           ),
//         ],
//         selectedIndex: widget.currentIndex,
//         onDestinationSelected: widget.onTap,
//       ),
//     );
//   }
// }
