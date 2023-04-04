import 'package:url_launcher/url_launcher.dart';

enum SocialMedia { facebook, insta, twitter, linkedIn }

enum ApiUrl { getRestaurant, favoriteEdit }

const serviceBaseUrl = 'https://api.larky.ch/Customer/api/';

final urls = {
  SocialMedia.facebook: 'https://www.facebook.com/LarkyGroup',
  SocialMedia.insta: 'https://www.instagram.com/larkygroup/',
  SocialMedia.twitter: 'https://twitter.com/larkygroup',
  SocialMedia.linkedIn: 'https://www.linkedin.com/company/larkygroup/',
  ApiUrl.getRestaurant: '${serviceBaseUrl}TempRestaurant/GetTempRestaurantList',
  ApiUrl.favoriteEdit:
      '${serviceBaseUrl}TempRestaurant/AddOrRemoveTempResFavorite',
};

Future<void> urlLaunch(String url) async {
  Uri uri = Uri.parse(url);
  await canLaunchUrl(uri)
      ? await launchUrl(uri)
      : throw 'Could not launch $uri';
}
