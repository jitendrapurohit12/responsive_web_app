import 'package:flutter/material.dart';
import 'package:responsive_web_app/constants/constants.dart';
import 'package:responsive_web_app/constants/styles.dart';

class GradientButton extends StatefulWidget {
  final text;

  const GradientButton({Key key, this.text}) : super(key: key);
  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 36),
      decoration: BoxDecoration(
        gradient: gradientButton,
        borderRadius: BorderRadius.all(Radius.circular(36)),
      ),
      child: Text(widget.text, style: sub1Style),
    );
  }
}
