import 'package:flutter/material.dart';

import '../common/app_style.dart';
import '../common/size_config.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Text(
            'data',
            style: kJakartaHeading1.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * kHeading1),
          ),
          Text(
            'data',
            style: kJakartaBodyMedium.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * kBody1),
          )
        ],
      ),
    );
  }
}
