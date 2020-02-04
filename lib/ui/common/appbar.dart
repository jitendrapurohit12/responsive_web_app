import 'package:flutter/material.dart';
import 'package:responsive_web_app/constants/constants.dart';
import 'package:responsive_web_app/constants/styles.dart';

class CustomAppbar extends StatefulWidget {
  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    bool isMobile = userMobileLayout(context);
    return Padding(
      padding: EdgeInsets.only(
          top: isMobile ? 56 : 24,
          bottom: isMobile ? 16 : 24,
          left: isMobile ? 24 : 48,
          right: isMobile ? 24 : 48),
      child: Row(
        children: <Widget>[
          SizedBox(width: isMobile ? 24 : 102),
          Text('JPR', style: headingStyle),
          Spacer(),
          isMobile
              ? IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 36,
                  ),
                  onPressed: () {})
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Portfolio'),
                    SizedBox(width: 36),
                    Text('Skills'),
                    SizedBox(width: 36),
                    Text('About Me'),
                    SizedBox(width: 36),
                    Text('Contact'),
                    SizedBox(width: 36),
                  ],
                )
        ],
      ),
    );
  }
}
