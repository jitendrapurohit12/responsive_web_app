import 'package:flutter/material.dart';
import 'package:responsive_web_app/constants/constants.dart';
import 'package:responsive_web_app/constants/styles.dart';

class GradientButton extends StatefulWidget {
  final text;
  final VoidCallback callback;

  const GradientButton({Key key, this.text, this.callback}) : super(key: key);
  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.callback,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 36),
        decoration: BoxDecoration(
          gradient: gradientButton,
          borderRadius: BorderRadius.all(Radius.circular(36)),
        ),
        child: Text(widget.text, style: sub1Style),
      ),
    );
  }
}
