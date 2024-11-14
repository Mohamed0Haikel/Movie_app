import 'package:flutter/material.dart';

import '../../../constant.dart';

class CustomLoadingIndicator extends StatelessWidget {
  final double? size;
  final Color? color;
  const CustomLoadingIndicator({
    super.key,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size ?? 25,
        width: size ?? 25,
        child: CircularProgressIndicator(
          color: color ?? AppConstants.kWhiteColor,
          strokeWidth: 3.2,
        ),
      ),
    );
  }
}
