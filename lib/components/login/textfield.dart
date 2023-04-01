import 'package:flutter/material.dart';
import 'package:xiao_tally/config/theme.dart';

class UsernameField extends StatefulWidget {
  const UsernameField({
    super.key,
    required this.fieldController,
    required this.labelText,
  });

  final TextEditingController fieldController;
  final String labelText;

  @override
  State<UsernameField> createState() => _UsernameFieldState();
}

class _UsernameFieldState extends State<UsernameField> {
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

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.fieldController,
    required this.labelText,
    this.isConfirmPassword = false,
    this.firstPasswordFieldController,
  });

  final TextEditingController fieldController;
  final String labelText;
  final bool isConfirmPassword;
  final TextEditingController? firstPasswordFieldController;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
      child: TextFormField(
        controller: widget.fieldController,
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            color: Color(0xFF8B97A2),
            fontSize: 14,
          ),
          hintText: "输入${widget.labelText}...",
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
          suffixIcon: InkWell(
            onTap: () => setState(
              () => _obscureText = !_obscureText,
            ),
            child: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: const Color(0xFF95A1AC),
              size: 22,
            ),
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: 'Poppins',
            ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "请输入${widget.labelText}";
          }
          if (widget.isConfirmPassword &&
              value != widget.firstPasswordFieldController!.text) {
            return "两次输入的密码不一致";
          }
          return null;
        },
      ),
    );
  }
}
