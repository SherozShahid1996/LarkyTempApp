import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/svg.dart';
import '../common/app_style.dart';
import '../common/size_config.dart';
import '../common/constant.dart';

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
      return SingleChildScrollView(
          child: Html(
        data: pg1,
        style: {
          "h5": Style(fontSize: FontSize.larger),
          "strong": Style(fontSize: FontSize.large),
        },
      ));
    case FooterPages.pg2:
      return SingleChildScrollView(
          child: Html(
        data: pg2,
        style: {
          "h6": Style(fontSize: FontSize.larger),
          "h5": Style(fontSize: FontSize.large),
          "strong": Style(fontSize: FontSize.large),
        },
      ));
    case FooterPages.pg3:
      return SingleChildScrollView(
          child: Html(data: pg3, style: {
        "h6": Style(fontSize: FontSize.larger),
        "h5": Style(fontSize: FontSize.large),
        "strong": Style(fontSize: FontSize.large),
      }));
    case FooterPages.pg4:
      return SingleChildScrollView(
          child: Html(data: pg4, style: {
        "h6": Style(fontSize: FontSize.larger),
        "h5": Style(fontSize: FontSize.large),
        "strong": Style(fontSize: FontSize.large),
      }));
    case FooterPages.pg5:
      return SingleChildScrollView(
          child: Html(data: pg5, style: {
        "h6": Style(fontSize: FontSize.larger),
        "h5": Style(fontSize: FontSize.large),
        "strong": Style(fontSize: FontSize.large),
      }));
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
