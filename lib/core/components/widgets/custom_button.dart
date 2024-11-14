import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../utils/styles.dart';
import 'loading_indicator.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final bool isLoading;
  final Color? color;
  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.width,
    required this.height,
    super.key,
    this.isLoading = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        backgroundColor: color ?? AppConstants.kSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      onPressed: onPressed,
      child: isLoading
          ? const Center(child: CustomLoadingIndicator())
          : Center(
              child: Text(
                text,
                style: Styles.textStyle20.copyWith(
                  color: AppConstants.kWhiteColor,
                ),
              ),
            ),
    );
  }
}
