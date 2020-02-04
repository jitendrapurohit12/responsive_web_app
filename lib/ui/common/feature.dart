import 'package:flutter/material.dart';
import 'package:responsive_web_app/constants/styles.dart';
import 'package:responsive_web_app/model/feature_model.dart';

class FeatureUI extends StatefulWidget {
  final FeatureModel model;

  const FeatureUI({Key key, this.model}) : super(key: key);
  @override
  _FeatureUIState createState() => _FeatureUIState();
}

class _FeatureUIState extends State<FeatureUI> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.model.image),
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(widget.model.title, style: title5Style),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(widget.model.subtitle, style: sub2Style),
      ),
    );
  }
}
