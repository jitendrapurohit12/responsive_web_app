import 'package:responsive_web_app/constants/constants.dart';

class FeatureModel {
  String image, title, subtitle;

  FeatureModel({this.image, this.title, this.subtitle});
}

List list1 = [
  FeatureModel(
    image: imagePresentation,
    title: 'Presentation Design',
    subtitle:
        'With the right strategy, story telling and design I help you or your team present ideas in a way that will generate impact and be remembered. Eather you need a new presentation or redesign an existing one.',
  ),
  FeatureModel(
    image: imageUIUX,
    title: 'Web Design - UX / UI',
    subtitle:
        'With the help of web channels and great designed content you can better reach your audience which means better communication and presence.',
  ),
  FeatureModel(
    image: imageMarketing,
    title: 'Marketing',
    subtitle:
        'Programs and strategies that turn visitors into customers. Well defined processes that incorporate the best practices to engage and nurture buyers through the sales funnel',
  ),
  FeatureModel(
      image: imageStrategy,
      title: 'Strategy',
      subtitle:
          'Creative solutions that meet the rigorous strategic analysis. Constant focus on innovation allows me to help your brand or company to improve its influence.')
];
