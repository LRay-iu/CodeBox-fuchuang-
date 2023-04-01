import 'package:flutter/material.dart';
import 'package:xiao_tally/components/navbar/navbar.dart';
import 'package:xiao_tally/pages/bill.dart';
import 'package:xiao_tally/pages/chart.dart';
import 'package:xiao_tally/pages/home.dart';
import 'package:xiao_tally/pages/user.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key, required this.title});

  final String title;

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(title: '主页'),
    const BillPage(title: '账单'),
    const ChartPage(title: '图表'),
    const UserPage(title: '我的'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: NavBar(
        currentIndex: currentIndex,
        onTap: (index) => {
          setState(() {
            currentIndex = index;
          })
        },
      ),
    );
  }
}
