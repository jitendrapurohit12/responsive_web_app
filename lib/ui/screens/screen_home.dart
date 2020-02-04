import 'package:flutter/material.dart';
import 'package:responsive_web_app/constants/constants.dart';
import 'package:responsive_web_app/constants/styles.dart';
import 'package:responsive_web_app/model/feature_model.dart';
import 'package:responsive_web_app/ui/common/appbar.dart';
import 'package:responsive_web_app/ui/common/feature.dart';
import 'package:responsive_web_app/ui/common/gradient_button.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    bool isMobile = userMobileLayout(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: isMobile ? 96 : 200),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imageBackground)),
                  gradient: gradientBackground),
              child: Row(
                children: <Widget>[
                  isMobile ? Container() : Expanded(child: Container()),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('COMMUNICATE BETTER',
                                style: smallColoredTextStyle),
                            SizedBox(height: 8),
                            Text('ACHIEVE MORE', style: title1Style),
                            SizedBox(height: 32),
                            Text(
                              sub1,
                              style: sub1Style,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 32),
                            GradientButton(text: 'Let\'s work together')
                          ],
                        ),
                      ),
                    ),
                  ),
                  isMobile ? Container() : Expanded(child: Container()),
                ],
              ),
            ),
            SizedBox(height: 36),
            Text('WHAT DO YOU WANT TO SAY?|', style: title4Style),
            SizedBox(height: 36),
            Container(
              padding: EdgeInsets.symmetric(vertical: isMobile ? 56 : 102),
              width: double.maxFinite,
              color: colorBackground2,
              child: isMobile
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        whatIDoWidget(),
                        SizedBox(height: 36),
                        for (int i = 0; i < list1.length; i++)
                          FeatureUI(model: list1[i])
                      ],
                    )
                  : Row(
                      children: <Widget>[
                        Expanded(flex: 1, child: whatIDoWidget()),
                        Expanded(flex: 2, child: getFeatureGridView(isMobile))
                      ],
                    ),
            ),
            SizedBox(height: 56),
            Row(
              children: <Widget>[
                isMobile ? Container() : Expanded(child: Container()),
                Expanded(
                  child: Container(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Text(
                        'CASE STUDIES',
                        style: smallColoredTextStyle,
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Selected Works',
                        style: title4Style,
                      ),
                      SizedBox(height: 24),
                      Text(
                        sub2,
                        style: sub3Style,
                        textAlign: TextAlign.center,
                      )
                    ]),
                  ),
                ),
                isMobile ? Container() : Expanded(child: Container()),
              ],
            ),
            SizedBox(height: 56),
            SingleChildScrollView(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: isMobile ? 1 : 3,
                children: imageList
                    .map((path) => Image.asset(
                          path,
                          fit: BoxFit.cover,
                        ))
                    .toList(),
              ),
            ),
            SizedBox(height: 56),
            GradientButton(text: 'Know More of My Work'),
            SizedBox(height: 56),
            Container(
              padding: EdgeInsets.symmetric(vertical: isMobile ? 56 : 102),
              color: colorBackground2,
              child: Row(
                children: <Widget>[
                  isMobile ? Container() : Expanded(child: Container()),
                  Expanded(
                    child: Container(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text(
                          'ARE YOU READY?',
                          style: smallColoredTextStyle,
                        ),
                        SizedBox(height: 24),
                        Text(
                          'Let\'s Work Together',
                          style: title2Style,
                        ),
                        SizedBox(height: 24),
                        Text(
                          sub3,
                          style: sub1Style,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 56),
                        GradientButton(text: 'Let\'s Work Together'),
                        SizedBox(height: 24)
                      ]),
                    ),
                  ),
                  isMobile ? Container() : Expanded(child: Container()),
                ],
              ),
            ),
            SizedBox(height: 56)
          ],
        ),
      ),
    );
  }

  Widget whatIDoWidget() {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Text('EXPERIENCE & SKILLS', style: smallColoredTextStyle),
      SizedBox(height: 16),
      Text('What I do', style: title2Style),
      SizedBox(height: 48),
      GradientButton(
        text: 'Know more ->',
      )
    ]);
  }

  Widget getFeatureGridView(bool isMobile) {
    return Padding(
      padding: const EdgeInsets.only(right: 120.0),
      child: Wrap(
        direction: Axis.horizontal,
        children: list1.map((model) => FeatureUI(model: model)).toList(),
      ),
    );
  }
}
