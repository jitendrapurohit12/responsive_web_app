import 'package:flutter/cupertino.dart';

const imageBackground = 'assets/background.png';
const imageGrid1 = 'assets/grid1.jpeg';
const imageGrid2 = 'assets/grid2.jpeg';
const imageGrid3 = 'assets/grid3.jpeg';
const imageGrid4 = 'assets/grid4.jpeg';
const imageGrid5 = 'assets/grid5.jpeg';
const imageGrid6 = 'assets/grid6.jpeg';
const imageGrid7 = 'assets/grid7.png';
const imageGrid8 = 'assets/grid8.png';
const imageGrid9 = 'assets/grid9.png';
const imageGrid10 = 'assets/grid10.png';
const imageGrid11 = 'assets/dgri11.png';
const imageGrid12 = 'assets/grid12.png';
const imageGrid13 = 'assets/grid13.png';
const imageGrid14 = 'assets/grid14.png';
const imageGrid15 = 'assets/grid15.png';
const imageGrid16 = 'assets/grid16.png';
const imageGrid17 = 'assets/grid17.png';
const imageGrid18 = 'assets/grid18.png';
const imageMarketing = 'assets/marketing.png';
const imagePresentation = 'assets/presentation.png';
const imageStrategy = 'assets/strategy.png';
const imageUIUX = 'assets/ui_ux.png';

const colorBackground = Color(0xFFC9636A);
const colorBackground2 = Color(0xFF766BF8);
const colorSmallText = Color(0xFFF0AE34);
const colorButtonStart = Color(0xFFEA7438);
const colorButtonEnd = Color(0xFFF4B233);
const gradientButton =
    LinearGradient(colors: [colorButtonStart, colorButtonEnd]);
const gradientBackground = LinearGradient(
    colors: [Color(0xFFEC824D), Color(0xFF6456CA)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);

bool userMobileLayout(BuildContext context) =>
    MediaQuery.of(context).size.shortestSide < 600;

List imageList = [
  imageGrid1,
  imageGrid2,
  imageGrid3,
  imageGrid4,
  imageGrid5,
  imageGrid6,
  imageGrid7,
  imageGrid8,
  imageGrid9,
  imageGrid10,
  imageGrid11,
  imageGrid12,
  imageGrid13,
  imageGrid14,
  imageGrid15,
  imageGrid16,
  imageGrid17,
  imageGrid18
];

const sub1 =
    'I\'m a visual communications consultant, designer and marketer experienced in helping build and execute strategies that improve internal and external visual communications for companies and individuals.';
const sub2 =
    'I\'ve created amazing visual presentations for leader, creative teams, executives and brands to help them communicate their message and stand out.';
const sub3 =
    'Feel free to contact me if you’re interested in improving your visual communications. It’d be great to work together.';
