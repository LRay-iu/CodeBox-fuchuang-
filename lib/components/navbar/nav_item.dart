import 'package:go_router/go_router.dart';
import 'package:xiao_tally/components/navbar/nav_config.dart';
import 'package:xiao_tally/config/button.dart';
import 'package:xiao_tally/config/theme.dart';
import 'package:flutter/material.dart';

class NavItem extends StatefulWidget {
  const NavItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  final int index;
  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderColor: Colors.transparent,
      borderRadius: 30,
      borderWidth: 1,
      buttonSize: 50,
      icon: Icon(
        widget.currentIndex == widget.index
            ? icons[widget.index]['selected']
            : icons[widget.index]['unselected'],
        size: 24,
      ),
      onPressed: (() => {widget.onTap(widget.index)}),
    );
  }
}

class NavItemMiddle extends StatefulWidget {
  const NavItemMiddle({
    super.key,
  });

  @override
  State<NavItemMiddle> createState() => _NavItemMiddleState();
}

class _NavItemMiddleState extends State<NavItemMiddle> {
  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderColor: Colors.transparent,
      borderRadius: 20,
      borderWidth: 1,
      buttonSize: 50,
      fillColor: FlutterFlowTheme.of(context).primaryColor,
      icon: const Icon(
        Icons.add,
        color: Colors.white,
        size: 27,
      ),
      onPressed: () {
        context.go('/add');
      },
    );
  }
}
