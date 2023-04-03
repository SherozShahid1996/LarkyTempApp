import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:temp_larky_front/common/size_config.dart';
import 'package:http/http.dart' as http;
import 'package:temp_larky_front/model/common_result.dart';
import 'package:temp_larky_front/util/AuthDetails.dart';
import '../common/app_style.dart';
import '../model/restaurant_list.dart';
import 'footer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RestaurantList extends StatefulWidget {
  const RestaurantList({Key? key}) : super(key: key);
  static const routeName = '/restaurant-list';

  @override
  State<RestaurantList> createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  final favKey = GlobalKey();
  final nearbyKey = GlobalKey();
  final otherKey = GlobalKey();
  final controller = ScrollController();
  late Color _favColor = Colors.black;
  late Color _nearbyColor = Colors.black;
  late Color _otherColor = Colors.black;
  late CommonResult commonResult;

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };

  UniqueKey _key = UniqueKey();

  Future scrollToFavourite() async {
    final context = favKey.currentContext!;
    setState(() {
      _favColor = themeOrange;
      _nearbyColor = Colors.black;
      _otherColor = Colors.black;
    });
    await Scrollable.ensureVisible(
      context,
      //alignment: 0.5,
      duration: const Duration(milliseconds: 800),
    );
  }

  Future scrollToNearby() async {
    final context = nearbyKey.currentContext!;
    setState(() {
      _favColor = Colors.black;
      _nearbyColor = themeOrange;
      _otherColor = Colors.black;
    });
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 800),
    );
  }

  Future scrollToOther() async {
    final context = otherKey.currentContext!;
    setState(() {
      _favColor = Colors.black;
      _nearbyColor = Colors.black;
      _otherColor = themeOrange;
    });

    await Scrollable.ensureVisible(
      context,
      //alignment: 0.5,
      duration: const Duration(milliseconds: 800),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeBackground,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "btn1",
              backgroundColor: _favColor,
              child: Stack(children: [
                SvgPicture.asset(
                  'images/icon-favourite.svg',
                  width: 27,
                  height: 27,
                ),
              ]),
              onPressed: () => scrollToFavourite(),
            ),
            const SizedBox(width: 50),
            FloatingActionButton(
              heroTag: "btn2",
              backgroundColor: _nearbyColor,
              child: Stack(children: [
                SvgPicture.asset(
                  'images/icon-nearby.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  width: 44,
                  height: 44,
                ),
              ]),
              onPressed: () => scrollToNearby(),
            ),
            const SizedBox(width: 50),
            FloatingActionButton(
              heroTag: "btn3",
              backgroundColor: _otherColor,
              child: Stack(children: [
                SvgPicture.asset('images/icon-all.svg',
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    width: 35,
                    height: 35),
              ]),
              onPressed: () => scrollToOther(),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    restaurantListHeader(context),
                    snapshot.data!.FavResList!.isNotEmpty
                        ? Container(
                            key: favKey,
                            child: restaurantListHeading(
                                'Ihre ${snapshot.data!.FavResList!.length} Favoriten'),
                          )
                        : Container(),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.FavResList!.length,
                        itemBuilder: (context, index) {
                          return restaurantList(
                              snapshot.data!.FavResList![index],
                              context,
                              _key,
                              gestureRecognizers);
                        }),
                    snapshot.data!.NearbyResList!.isNotEmpty
                        ? Container(
                            key: nearbyKey,
                            child: restaurantListHeading(
                                '${snapshot.data!.NearbyResList!.length} Restaurants in der Nähe'),
                          )
                        : Container(),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.NearbyResList!.length,
                        itemBuilder: (context, index) {
                          return restaurantList(
                              snapshot.data!.NearbyResList![index],
                              context,
                              _key,
                              gestureRecognizers);
                        }),
                    snapshot.data!.RemainingResList!.isNotEmpty
                        ? Container(
                            key: otherKey,
                            child: restaurantListHeading(
                                'Weitere ${snapshot.data!.RemainingResList!.length} Restaurants'),
                          )
                        : Container(),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.RemainingResList!.length,
                        itemBuilder: (context, index) {
                          return restaurantList(
                              snapshot.data!.RemainingResList![index],
                              context,
                              _key,
                              gestureRecognizers);
                        }),
                    footer(context),
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }

  Future<MainList> getData() async {
    final String? token = await AuthDetails.getTokenLocal();

    const serviceBaseUrl = 'https://api.larky.ch/Customer/api/';
    String signInURL = '${serviceBaseUrl}TempRestaurant/GetTempRestaurantList';

    var resBody = {};
    resBody["Query"] = "Restaurant";
    resBody["Latitude"] = "24.9266176";
    resBody["Longitude"] = "67.0662656";
    resBody["DeviceId"] = "470a5444-f036-414f-8b96-d1899dc3e2cf";
    final response = await http.post(Uri.parse(signInURL),
        headers: {
          'Content-Type': 'application/json',
          'Token': token.toString()
        },
        body: jsonEncode(resBody));
    var list = json.decode(json.decode(response.body)["objects"]);
    final objectResponseFinal = MainList.fromJson(list);
    return objectResponseFinal;
  }
}

Widget restaurantListHeading(String heading) => Padding(
      padding: const EdgeInsets.only(bottom: 37, top: 37),
      child: SizedBox(
        width: SizeConfig.screenWidth! * listHeadingWidth,
        child: Text(
          heading,
          style: headingTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );

Widget iFrameSheet(
    BuildContext context, _key, gestureRecognizers, String? restaurantLink) {
  return makeDismissible(
    context: context,
    child: DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      builder: (_, controller) => Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(16),
        child: WebView(
          key: _key,
          initialUrl: restaurantLink,
          javascriptMode: JavascriptMode.unrestricted,
          gestureRecognizers: gestureRecognizers,
        ),
      ),
    ),
  );
}

Widget restaurantList(var obj, BuildContext context, _key, gestureRecognizers) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: SizeConfig.screenWidth! * listImgWidth,
            child: IconButton(
              icon: Icon(
                obj.isFavorite! ? Icons.favorite : Icons.favorite_border,
                color: themePink,
              ),
              highlightColor: Colors.pink,
              onPressed: () => updateFavourite(obj.id, obj.isFavorite!,
                  "470a5444-f036-414f-8b96-d1899dc3e2cf", context),
            ),
          ),
        ],
      ),
      GestureDetector(
        onTap: () => showModalBottomSheet<void>(
          isScrollControlled: true,
          context: context,
          backgroundColor: Colors.transparent,
          builder: (BuildContext context) => iFrameSheet(
              context, _key, gestureRecognizers, obj.restaurantLink),
          //iFrameSheet(context, 'https://larky.ch/TempRestaurant'),
        ),
        child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth! * listImgWidth,
              height: SizeConfig.screenWidth! * listImgWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: Image.network(obj.imageUrl!, fit: BoxFit.cover).image,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(300),
                border: Border.all(color: themeBorder, width: 2.0),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: SizeConfig.screenWidth! * listTitleWidth,
              child: Text(
                obj.name!,
                style: listTitleStyle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: SizeConfig.screenWidth! * listTitleWidth,
              child: Text(
                "${obj.street} ${obj.houseNumber}\n${obj.postalCode} ${obj.location}",
                style: listDescStyle,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
      const SizedBox(height: 37)
    ],
  );
}

void updateFavourite(
    int? id, bool? isFavorite, String deviceId, BuildContext context) async {
  print('${id.toString()} +${isFavorite.toString()} ${deviceId}');
  final String? token = await AuthDetails.getTokenLocal();
  const serviceBaseUrl = 'https://api.larky.ch/Customer/api/';
  String signInURL =
      '${serviceBaseUrl}TempRestaurant/AddOrRemoveTempResFavorite';
  var resBody = {};
  resBody["Id"] = id;
  resBody["IsFavorite"] = isFavorite;
  resBody["DeviceId"] = deviceId;
  final response = await http.post(Uri.parse(signInURL),
      headers: {'Content-Type': 'application/json', 'Token': token.toString()},
      body: jsonEncode(resBody));
  if (response.statusCode == 200) {
    Navigator.pop(context);
    Navigator.of(context).pushNamed(RestaurantList.routeName);
  }
}

Widget restaurantListHeader(BuildContext context) => Padding(
      padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          restaurantListLogo(context),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              icon: const Icon(Icons.search, size: 30),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),
                );
              },
            ),
          ),
        ],
      ),
    );

Widget restaurantListLogo(BuildContext context) => InkWell(
      onTap: () => Navigator.of(context).pop(),
      child: SvgPicture.asset(
        'images/mblLogo2.svg',
        allowDrawingOutsideViewBox: true,
      ),
    );

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = ['AA', 'BB', 'CC'];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
