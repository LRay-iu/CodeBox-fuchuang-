import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xiao_tally/components/common/page.dart';
import 'package:xiao_tally/components/home/item.dart';
import 'package:xiao_tally/components/home/panel.dart';
import 'package:xiao_tally/components/msg/toast.dart';
import 'package:xiao_tally/src/generated/xiao_grpc.pb.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Receipt receiptRecord = Receipt(
      amount: 100, shopName: 'food', datetime: '2021-09-01', note: 'test');

  @override
  Widget build(BuildContext context) {
    return XPage(
      title: widget.title,
      elevation: 2,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TopPanel(),
            ReceiptRecordItem(receiptRecord: receiptRecord),
            TextButton(
                onPressed: () => {context.go('/welcome')},
                child: const Text("Welcome")),
            TextButton(
                onPressed: () => {
                      Toast.show(
                        context: context,
                        message: 'Hello World',
                      )
                    },
                child: const Text("Hello")),
          ],
        ),
      ),
    );
  }
}
