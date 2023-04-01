import 'package:flutter/material.dart';

class XiaoLogo extends StatelessWidget {
  const XiaoLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      width: 160,
      height: 160,
      fit: BoxFit.cover,
    );
  }
}
