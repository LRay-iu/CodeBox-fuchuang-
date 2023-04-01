import 'package:flutter/material.dart';
import 'package:xiao_tally/config/theme.dart';

class XTextField extends StatefulWidget {
  const XTextField({
    super.key,
    required this.fieldController,
    required this.labelText,
    this.maxLines = 1,
  });

  final TextEditingController fieldController;
  final String labelText;
  final int? maxLines;

  @override
  State<XTextField> createState() => _XTextFieldState();
}

class _XTextFieldState extends State<XTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
      child: TextFormField(
        controller: widget.fieldController,
        obscureText: false,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            color: Color(0xFF8B97A2),
            fontSize: 14,
          ),
          hintText: '请输入${widget.labelText}',
          hintStyle: const TextStyle(
            color: Color(0xFF95A1AC),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFDBE2E7),
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF8B97A2),
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          filled: true,
          fillColor: const Color(0xFFFAFBFC),
          contentPadding: const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
        ),
        style: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: 'Poppins',
            ),
        validator: (val) {
          if (val!.isEmpty) {
            return '${widget.labelText}不能为空';
          }

          return null;
        },
        // onSaved: (String? value) {
        //   widget.onSaved(value);
        // },
      ),
    );
  }
}

class NumberField extends StatefulWidget {
  const NumberField({
    super.key,
    required this.fieldController,
    required this.labelText,
  });

  final TextEditingController fieldController;
  final String labelText;

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
      child: TextFormField(
        controller: widget.fieldController,
        obscureText: false,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            color: Color(0xFF8B97A2),
            fontSize: 14,
          ),
          hintText: '请输入${widget.labelText}',
          hintStyle: const TextStyle(
            color: Color(0xFF95A1AC),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFDBE2E7),
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF8B97A2),
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          filled: true,
          fillColor: const Color(0xFFFAFBFC),
          contentPadding: const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
        ),
        style: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: 'Poppins',
            ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return '请输入${widget.labelText}';
          }
          return null;
        },
      ),
    );
  }
}
