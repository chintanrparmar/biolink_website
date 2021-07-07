import 'package:biolink_website/model/SocialButton.dart';
import 'package:biolink_website/utils/constants.dart';

class ListDB {
  static List<SocialButton> socialButtons = [
    SocialButton(
      'Github',
      'https://i.ibb.co/XDpSPfJ/git-icon.png',
      Constants.GITHUB_URL,
    ),
    SocialButton(
      'Twitter',
      'https://i.ibb.co/4dB06cX/twitter.png',
      Constants.TWITTER_URL,
    ),
    SocialButton(
      'Linkedin',
      'https://i.ibb.co/N32Wbhv/linkedin.png',
      Constants.LINKEDIN_URL,
    )
  ];
}
