import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 20.0,
        left: 24.0,
        right: 24.0,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: MediaQuery.sizeOf(context).height * 0.08,
            // width: 70,
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22.0,
            ),
            onPressed: () {
              // GoRouter.of(context).go(
              //   AppRouter.kSearchView,
              // );
            },
          ),
        ],
      ),
    );
  }
}
