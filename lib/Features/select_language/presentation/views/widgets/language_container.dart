import 'package:flutter/material.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';

class LanguageContainer extends StatelessWidget {
  final String language;
  // final String flagPath;
  final VoidCallback onTap;
  final Color? color;
  final Color? textColor;

  const LanguageContainer(
      {required this.language,
      // required this.flagPath,
      required this.onTap,
      super.key,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    bool lessThan800 = width < 768;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: lessThan800 ? width / 2.2 : width / 3.3,
        decoration: BoxDecoration(
          color: color ?? Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: AppConstants.kBlackColor.withOpacity(0.2),
            width: 1.2,
          ),
        ),
        child: Column(
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(8.0),
            //   child: SvgPicture.asset(
            //     flagPath,
            //     width: lessThan800 ? width / 2.2 : width / 3.3,
            //     height: height / 5.5,
            //     fit: BoxFit.fitHeight,
            //   ),
            // ),
            // const SizedBox(height: 5),
            Text(
              language,
              style: Styles.textStyle18.copyWith(
                color: textColor ?? AppConstants.kBlackColor,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
