import 'package:flutter/material.dart';
import 'package:xiao_tally/config/theme.dart';

class LineWithText extends StatefulWidget {
  const LineWithText({super.key, required this.text});

  final String text;

  @override
  State<LineWithText> createState() => _LineWithTextState();
}

class _LineWithTextState extends State<LineWithText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: FlutterFlowTheme.of(context).lineColor2,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
            child: Text(
              widget.text,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                  ),
            ),
          ),
          Expanded(
            child: Divider(
              color: FlutterFlowTheme.of(context).lineColor2,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
