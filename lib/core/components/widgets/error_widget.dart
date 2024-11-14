// import 'package:flutter/material.dart';

// import '../../../constant.dart';
// import '../../../generated/l10n.dart';
// import '../../utils/app_styles.dart';
// import 'custom_button.dart';

// class CustomErrorWidget extends StatelessWidget {
//   final VoidCallback onTap;
//   const CustomErrorWidget({
//     required this.onTap,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     bool isTablet =
//         AppConstants.kMinimumTabletWidth < MediaQuery.of(context).size.width;
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           S.of(context).SomethingWentWrong,
//           style: AppStyles.style24Bold(context).copyWith(
//             color: AppConstants.kSecondaryColor,
//           ),
//         ),
//         const SizedBox(height: 16),
//         CustomButton(
//           text: S.of(context).TryAgain,
//           onPressed: onTap,
//           width: MediaQuery.of(context).size.width * 0.5,
//           height: isTablet ? 46 : 36,
//         ),
//       ],
//     );
//   }
// }
