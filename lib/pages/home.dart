import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:temp_larky_front/pages/restaurant_list.dart';
import '../common/app_style.dart';
import '../common/size_config.dart';
import 'footer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<Home> createState() => _HomeState();
}

get nullReturn => null;

class _HomeState extends State<Home> {
  final FocusNode _textFieldFocus = FocusNode();
  final Color _colorHint = const Color(0xFFFFF5C8);
  late Color _color = _colorHint;
  final String _searchHintText = 'Postleitzahl, Ort oder Restaurant';
  late String _searchHint = _searchHintText;

  @override
  void initState() {
    _textFieldFocus.addListener(() {
      if (_textFieldFocus.hasFocus) {
        setState(() {
          _color = Colors.white;
          _searchHint = '';
        });
      } else {
        setState(() {
          _color = _colorHint;
          _searchHint = _searchHintText;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: themeBackground,
      body: SingleChildScrollView(
        //physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight! - kHeading1,
              color: themeLightYellow,
              child: Column(
                children: [
                  homeLogo(),
                  const SizedBox(height: 95),
                  homeSearch(_textFieldFocus, _color, _searchHint),
                  const SizedBox(height: 25),
                  homeBtnSearch(context),
                  //const SizedBox(height: 150),
                  homeBtnFavorite(),
                ],
              ),
            ),
            homeSecContainer(context),
            footer(context),
          ],
        ),
      ),
    );
  }
}

Widget homeLogo() => Container(
      padding: const EdgeInsets.only(top: 60),
      child: Center(
        child: SvgPicture.asset(
          'images/mblLogo.svg',
          allowDrawingOutsideViewBox: true,
        ),
      ),
    );

Widget homeSearch(FocusNode textFieldFocus, Color color, String searchHint) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
    child: TextField(
      focusNode: textFieldFocus,
      style: const TextStyle(fontSize: 20, color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: color,
        focusColor: Colors.blue,
        hintText: searchHint,
        hintStyle: const TextStyle(fontSize: 20.0, color: Colors.black),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.white),
          borderRadius: BorderRadius.circular(45),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.white),
          borderRadius: BorderRadius.circular(45),
        ),
      ),
    ),
  );
}

Widget homeBtnSearch(BuildContext context) {
  return SizedBox(
    height: 48,
    child: ElevatedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return themePink;
            }
            return null;
          },
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45),
          ),
        ),
      ),
      onPressed: () =>
          Navigator.of(context).pushNamed(RestaurantList.routeName),
      child: const Text("Suchen", style: TextStyle(fontSize: 18)),
    ),
  );
}

Widget homeBtnFavorite() {
  return Expanded(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 35),
        child: SizedBox(
          height: 48,
          child: ElevatedButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black; //<-- SEE HERE
                  }
                  return nullReturn;
                },
              ),
              backgroundColor: MaterialStateProperty.all<Color>(themePink),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
            onPressed: () => nullReturn,
            child: const Text("Favorit hinzufügen",
                style: TextStyle(fontSize: 18)),
          ),
        ),
      ),
    ),
  );
}

Widget homeSecContainer(BuildContext context) {
  return Container(
    width: SizeConfig.screenWidth,
    color: themeDarkYellow,
    child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        child: Column(
          children: const [
            Text(
              'Larky.ch ist ein selbsttragendes Gemeinschaftsprojekt und gehört allen Schweizer Gastronomen!',
              style: secContainerTextStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              'Mit Ihrer Bestellung helfen Sie uns sehr, da über Larky.ch keine teuren Umsatzabgaben anfallen.',
              style: secContainerTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Wir arbeiten täglich an der Weiterentwicklung unserer vorteilhaften und nachhaltigen Essensbestellplattform. Larky.ch soll auch für Sie die erste Wahl für Bestellungen bei Ihren Lieblingsrestaurants sein.',
              style: secContainerTextStyle,
              textAlign: TextAlign.center,
            )
          ],
        )),
  );
}
