import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;

  const Button({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.buttonColor = Colors.black87,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<Button> {
  Color? _buttonColor;
  late Color _textColor;

  @override
  void initState() {
    _buttonColor = widget.buttonColor;
    _textColor = widget.textColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _buttonColor = Colors.white;
          _textColor = Colors.black;
        });
      },
      onTapUp: (_) {
        setState(() {
          _buttonColor = widget.buttonColor;
          _textColor = widget.textColor;
        });
      },
      onTapCancel: () {
        setState(() {
          _buttonColor = widget.buttonColor;
          _textColor = widget.textColor;
        });
      },
      onTap: widget.onPressed,
      child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Container(
              decoration: BoxDecoration(
                color: _buttonColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              // padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 13.0),
              padding: const EdgeInsets.fromLTRB(15, 20, 220, 5),
              child: Text(

                widget.buttonText,
                style: TextStyle(
                  color: _textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ]
      ),
    );
  }
}