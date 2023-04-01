import 'package:flutter/material.dart';

class NumberKeyboard extends StatelessWidget {
  final Function(String) onNumberPressed;
  final Function() onBackspacePressed;

  const NumberKeyboard({
    required Key key,
    required this.onNumberPressed,
    required this.onBackspacePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              _buildNumberButton('1'),
              _buildNumberButton('2'),
              _buildNumberButton('3'),
            ],
          ),
          Row(
            children: <Widget>[
              _buildNumberButton('4'),
              _buildNumberButton('5'),
              _buildNumberButton('6'),
            ],
          ),
          Row(
            children: <Widget>[
              _buildNumberButton('7'),
              _buildNumberButton('8'),
              _buildNumberButton('9'),
            ],
          ),
          Row(
            children: <Widget>[
              _buildNumberButton(''),
              _buildNumberButton('0'),
              _buildBackspaceButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNumberButton(String number) {
    return Expanded(
      child: TextButton(
        onPressed: () => onNumberPressed(number),
        child: Text(
          number,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildBackspaceButton() {
    return Expanded(
      child: TextButton(
        onPressed: onBackspacePressed,
        child: Icon(
          Icons.backspace,
          size: 24,
        ),
      ),
    );
  }
}
