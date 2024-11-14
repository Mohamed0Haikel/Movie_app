import 'package:flutter/material.dart';

import '../../../constant.dart';

class BackWidget extends StatelessWidget {
  final void Function() onTap;
  const BackWidget({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    bool isTablet = AppConstants.kMinimumTabletWidth < mediaQuery.width;
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Icon(
            Icons.arrow_back_ios,
            size: isTablet ? 24 : 22,
            color: AppConstants.kBlackColor,
          ),
        ),
      ],
    );
  }
}
