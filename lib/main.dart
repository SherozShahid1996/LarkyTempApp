import 'package:flutter/material.dart';
import 'package:temp_larky_front/pages/home.dart';
import 'package:temp_larky_front/pages/restaurant_list.dart';
import 'common/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat-Regular',
        colorScheme: ColorScheme.fromSwatch(primarySwatch: myColor)
            .copyWith(secondary: Colors.white),
      ),
      // home: const Scaffold(
      //   backgroundColor: themeBackground,
      //   body: RestaurantList(),
      // ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (_) => const Home(),
        RestaurantList.routeName: (_) => const RestaurantList(search: ""),
      },
    );
  }
}
