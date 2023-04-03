import 'package:url_launcher/url_launcher.dart';

enum SocialMedia { Facebook, Insta, Twitter, LinkedIn }

final urls = {
  SocialMedia.Facebook: 'https://www.facebook.com/LarkyGroup',
  SocialMedia.Insta: 'https://www.instagram.com/larkygroup/',
  SocialMedia.Twitter: 'https://twitter.com/larkygroup',
  SocialMedia.LinkedIn: 'https://www.linkedin.com/company/larkygroup/',
};

Future<void> urlLaunch(String url) async {
  Uri uri = Uri.parse(url);
  await canLaunchUrl(uri)
      ? await launchUrl(uri)
      : throw 'Could not launch $uri';
}
