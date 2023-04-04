import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:temp_larky_front/common/size_config.dart';
import 'package:http/http.dart' as http;
import 'package:temp_larky_front/model/common_result.dart';
import 'package:temp_larky_front/util/AuthDetails.dart';
import '../common/app_style.dart';
import '../common/constant.dart';
import '../model/restaurant_list.dart';
import 'footer.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../util/localStorage.dart';
import 'home.dart';

class RestaurantList extends StatefulWidget {
  //const RestaurantList({Key? key}) : super(key: key);
  static const routeName = '/restaurant-list';
  final String search;
  final Position? position;
  const RestaurantList({required this.search, this.position});

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
  bool isSearch = false;
  String searchResilt = "";
  String deviceId = "";

  bool flag = false;
  final TextEditingController? _search = new TextEditingController();
  void getSearch(value) {
    setState(() {
      searchResilt = value;
    });
  }

  Future<void> getDeviceId() async {
    String query = await localStorage.getDeviceId();
    deviceId = query;
  }

  @override
  initState() {
    flag = true;
    _search!.text = widget.search;
    if (widget.search.isNotEmpty) {
      isSearch = true;
      getSearch(widget.search);
    }
    getDeviceId();
  }

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };

  final UniqueKey _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    void setSearfield() {
      setState(() {
        if (searchResilt != "") {
          searchResilt = "";
          localStorage.storeSearchValue("");
          _search!.clear();
        } else {
          isSearch = !isSearch;
        }
      });
    }

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
              Future.delayed(Duration.zero, () async {
                function(snapshot.data!);
              });
              return SingleChildScrollView(
                child: Column(
                  children: [
                    restaurantListHeader(
                        context, isSearch, setSearfield, getSearch, _search),
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
                              gestureRecognizers,
                              deviceId);
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
                              gestureRecognizers,
                              deviceId);
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
                              gestureRecognizers,
                              deviceId);
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
    String signInURL = urls[ApiUrl.getRestaurant]!;
    var resBody = {};
    resBody["Query"] = searchResilt;
    resBody["Latitude"] = "37.4220936"; // widget.position!.latitude;
    resBody["Longitude"] = "-122.083922"; // widget.position!.longitude;
    resBody["DeviceId"] = deviceId;
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

  void function(MainList objectResponseFinal) {
    if (flag) {
      setState(() {
        _favColor =
            objectResponseFinal.FavResList!.isEmpty ? themeGray : _favColor;
        _nearbyColor = objectResponseFinal.NearbyResList!.isEmpty
            ? themeGray
            : _nearbyColor;
        _otherColor = objectResponseFinal.RemainingResList!.isEmpty
            ? themeGray
            : _otherColor;
        flag = false;
      });
    }
  }

  Future scrollToFavourite() async {
    final context = favKey.currentContext!;
    setState(() {
      if (_favColor != themeGray) _favColor = themeOrange;
      if (_nearbyColor != themeGray) _nearbyColor = Colors.black;
      if (_otherColor != themeGray) _otherColor = Colors.black;
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
      if (_favColor != themeGray) _favColor = Colors.black;
      if (_nearbyColor != themeGray) _nearbyColor = themeOrange;
      if (_otherColor != themeGray) _otherColor = Colors.black;
    });
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 800),
    );
  }

  Future scrollToOther() async {
    final context = otherKey.currentContext!;
    setState(() {
      if (_favColor != themeGray) _favColor = Colors.black;
      if (_nearbyColor != themeGray) _nearbyColor = Colors.black;
      if (_otherColor != themeGray) _otherColor = themeOrange;
    });

    await Scrollable.ensureVisible(
      context,
      //alignment: 0.5,
      duration: const Duration(milliseconds: 800),
    );
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
    BuildContext context, key, gestureRecognizers, String? restaurantLink) {
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
          key: key,
          initialUrl: restaurantLink,
          javascriptMode: JavascriptMode.unrestricted,
          gestureRecognizers: gestureRecognizers,
        ),
      ),
    ),
  );
}

Widget restaurantList(
    var obj, BuildContext context, key, gestureRecognizers, deviceId) {
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
              onPressed: () =>
                  updateFavourite(obj.id, obj.isFavorite!, deviceId, context),
            ),
          ),
        ],
      ),
      GestureDetector(
        onTap: () => showModalBottomSheet<void>(
          isScrollControlled: true,
          context: context,
          backgroundColor: Colors.transparent,
          builder: (BuildContext context) =>
              iFrameSheet(context, key, gestureRecognizers, obj.restaurantLink),
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

Future<void> updateFavourite(
    int? id, bool? isFavorite, String deviceId, BuildContext context) async {
  final String? token = await AuthDetails.getTokenLocal();
  String signInURL = urls[ApiUrl.favoriteEdit]!;
  var resBody = {};
  resBody["Id"] = id;
  resBody["IsFavorite"] = isFavorite;
  resBody["DeviceId"] = deviceId;
  final response = await http.post(Uri.parse(signInURL),
      headers: {'Content-Type': 'application/json', 'Token': token.toString()},
      body: jsonEncode(resBody));
  if (response.statusCode == 200) {
    if (context.mounted) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const RestaurantList(search: ''),
          ));
      // Navigator.of(context).pop();
      // Navigator.of(context).pushNamed(RestaurantList.routeName);
    }
  }
}

Widget restaurantListHeader(
    BuildContext context, bool isSearch, onPressed, getSearch, search) {
  return Padding(
    padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isSearch
            ? Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 2000),
                  child: SizedBox(
                    height: 48,
                    child: TextField(
                      controller: search,
                      onSubmitted: (value) {
                        localStorage.storeSearchValue(value);
                        getSearch(value);
                      },
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Postleitzahl, Ort oder Restaurant',
                        prefixIcon:
                            Icon(Icons.search, color: Colors.black, size: 30),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              topLeft: Radius.circular(50)),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                topLeft: Radius.circular(50))),
                      ),
                    ),
                  ),
                ),
              )
            : restaurantListLogo(context),
        Container(
          width: 44,
          height: 48,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  isSearch ? borderRadius : BorderRadius.circular(50)),
          child: IconButton(
            icon: isSearch
                ? const Icon(Icons.cancel, size: 30)
                : const Icon(Icons.search, size: 30),
            onPressed: onPressed,
          ),
        ),
      ],
    ),
  );
}

Widget restaurantListLogo(BuildContext context) => InkWell(
      onTap: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          )),
      child: SvgPicture.asset(
        'images/mblLogo2.svg',
        allowDrawingOutsideViewBox: true,
      ),
    );

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [];
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
  Widget buildResults(BuildContext context) => Container();
  // Center(
  //
  //   child: Text(
  //     query,
  //     style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
  //   ),
  // );

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
