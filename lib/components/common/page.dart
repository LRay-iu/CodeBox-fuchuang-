import 'package:flutter/material.dart';
import 'package:xiao_tally/config/theme.dart';

class XPage extends StatefulWidget {
  const XPage(
      {super.key,
      required this.title,
      required this.body,
      required this.elevation,
      this.actions = const []});

  final String title;
  final Widget body;
  final List<Widget> actions;
  final double elevation;

  @override
  State<XPage> createState() => _XPageState();
}

class _XPageState extends State<XPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          widget.title,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: widget.actions,
        centerTitle: false,
        elevation: widget.elevation,
      ),
      body: widget.body,
    );
  }
}

class SubPage extends StatefulWidget {
  const SubPage(
      {super.key,
      required this.title,
      required this.body,
      this.floatingActionButton,
      this.actions = const []});

  final String title;
  final Widget body;
  final List<Widget> actions;
  final FloatingActionButton? floatingActionButton;

  @override
  State<SubPage> createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        title: Text(
          widget.title,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: widget.actions,
        elevation: 2,
      ),
      body: widget.body,
      floatingActionButton: widget.floatingActionButton,
    );
  }
}
