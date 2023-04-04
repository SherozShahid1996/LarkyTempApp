import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../common/app_style.dart';
import '../common/size_config.dart';
import '../common/constant.dart';

enum FooterPages { pg1, pg2, pg3, pg4, pg5 }

Widget footer(BuildContext context) {
  return Container(
    width: SizeConfig.screenHeight,
    padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
    color: Colors.black,
    child: Column(
      children: [
        const SizedBox(height: 35),
        footerLogo(),
        const SizedBox(height: 13),
        socialIcon(),
        const SizedBox(height: 40),
        footerPageLink(context, 'AGB für Kunden', FooterPages.pg1),
        footerPageLink(
            context, 'Datenschutzerklärung für Kunden', FooterPages.pg2),
        footerPageLink(context, 'AGB für Restaurants', FooterPages.pg3),
        footerPageLink(
            context, 'Datenschutzerklärung für Restaurants', FooterPages.pg4),
        footerPageLink(context, 'AGB für den Lieferdienst', FooterPages.pg5),
        const SizedBox(height: 40),
        larkyAddress(),
        const SizedBox(height: 40),
        binaroLogo(),
      ],
    ),
  );
}

Widget footerLogo() => SvgPicture.asset(
      'images/logo-footer.svg',
      allowDrawingOutsideViewBox: true,
    );

Widget socialIcon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CupertinoButton(
        minSize: double.minPositive,
        padding: EdgeInsets.zero,
        child: SvgPicture.asset('images/fb.svg'),
        onPressed: () => urlLaunch(urls[SocialMedia.facebook]!),
      ),
      CupertinoButton(
        padding: EdgeInsets.zero,
        child: SvgPicture.asset('images/insta.svg'),
        onPressed: () => urlLaunch(urls[SocialMedia.insta]!),
      ),
      CupertinoButton(
        padding: EdgeInsets.zero,
        minSize: double.minPositive,
        child: SvgPicture.asset('images/twitter.svg'),
        onPressed: () => urlLaunch(urls[SocialMedia.twitter]!),
      ),
      CupertinoButton(
        padding: EdgeInsets.zero,
        child: SvgPicture.asset('images/linkedIn.svg'),
        onPressed: () => urlLaunch(urls[SocialMedia.linkedIn]!),
      ),
    ],
  );
}

Widget footerPageLink(context, String pageName, FooterPages pg) => TextButton(
      onPressed: () {
        showModalBottomSheet<void>(
          isScrollControlled: true,
          context: context,
          backgroundColor: Colors.transparent,
          builder: (BuildContext context) => buildSheet(context, pg),
        );
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(pageName, style: footerLinkStyle),
    );

Widget makeDismissible({required Widget child, required BuildContext context}) {
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => Navigator.of(context).pop(),
    child: GestureDetector(onTap: () {}, child: child),
  );
}

Widget buildSheet(BuildContext context, FooterPages pg) {
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
        child: footerPage(pg, controller),
      ),
    ),
  );
}

footerPage(FooterPages r, controller) {
  switch (r) {
    case FooterPages.pg1:
      return ListView(
        controller: controller,
        children: const [
          Text("AGB für Kunden", style: TextStyle(fontSize: 16)),
          Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(fontSize: 16)),
          Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(fontSize: 16)),
          Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(fontSize: 16)),
          Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(fontSize: 16)),
        ],
      );
    case FooterPages.pg2:
      return const Text("pg2");
    case FooterPages.pg3:
      return const Text("pg3");
    case FooterPages.pg4:
      return const Text("pg4");
    case FooterPages.pg5:
      return const Text("pg5");
  }
}

Widget larkyAddress() {
  return Column(children: const [
    Text('Larky AG', style: footerLinkStyle),
    SizedBox(height: 5),
    Text('Neugasse 6', style: footerLinkStyle),
    SizedBox(height: 5),
    Text('6300 Zug', style: footerLinkStyle),
    SizedBox(height: 10),
    Text('service@larky.ch', style: footerLinkStyle),
    SizedBox(height: 10),
    Text('041 508 50 94', style: footerLinkStyle),
    SizedBox(height: 40),
    Text('© Copyright 2023 Larky AG.', style: footerLinkStyle),
    SizedBox(height: 5),
    Text('Alle Rechte vorbehalten.', style: footerLinkStyle),
  ]);
}

Widget binaroLogo() => SvgPicture.asset(
      'images/binaro-logo.svg',
      allowDrawingOutsideViewBox: true,
    );
