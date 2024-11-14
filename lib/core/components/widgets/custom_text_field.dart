// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../constant.dart';
// import '../../../features/select_language/presentation/manager/change_language_cubit/change_language_cubit.dart';
// import '../../utils/app_styles.dart';

// class CustomTextField extends StatefulWidget {
//   final TextEditingController controller;
//   final Function? suffixPressed;
//   final bool isPassword;
//   final IconData? suffix;
//   final String hintText;
//   final TextInputType? keyboardType;
//   final Color? hintTextColor;
//   final Color? borderColor;
//   final double? height;
//   final double? width;
//   final int? maxLines;
//   final FocusNode? focusNode;
//   final bool readOnly;
//   final bool autoFocus;
//   const CustomTextField({
//     required this.controller,
//     required this.hintText,
//     this.readOnly = false,
//     this.autoFocus = false,
//     super.key,
//     this.suffixPressed,
//     this.isPassword = false,
//     this.suffix,
//     this.keyboardType = TextInputType.text,
//     this.hintTextColor,
//     this.borderColor,
//     this.height,
//     this.maxLines,
//     this.focusNode,
//     this.width,
//   });

//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }

// class _CustomTextFieldState extends State<CustomTextField> {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     bool isTablet = AppConstants.kMinimumTabletWidth < size.width;
//     return SizedBox(
//       height: widget.height ?? (isTablet ? 44 : 40),
//       width: widget.width ?? (isTablet ? size.width / 2 : size.width),
//       child: TextField(
//         autofocus: widget.autoFocus,
//         readOnly: widget.readOnly,
//         controller: widget.controller,
//         obscureText: widget.isPassword,
//         decoration: InputDecoration(
//           focusedErrorBorder: outlineInputBorder(),
//           contentPadding: const EdgeInsets.symmetric(
//             horizontal: 12,
//             vertical: 8,
//           ),
//           fillColor: AppConstants.kWhiteColor,
//           filled: true,
//           enabledBorder: outlineInputBorder(borderColor: widget.borderColor),
//           focusedBorder: outlineInputBorder(borderColor: widget.borderColor),
//           hintText: widget.hintText,
//           hintStyle: AppStyles.style18Normal(context).copyWith(
//             color: widget.hintTextColor ?? AppConstants.kLabelForTextFiledColor,
//           ),
//           errorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(6),
//             borderSide: const BorderSide(
//               color: Colors.red,
//             ),
//           ),
//           suffixIcon: widget.suffix != null
//               ? IconButton(
//                   onPressed: widget.suffixPressed != null
//                       ? () {
//                           widget.suffixPressed!();
//                         }
//                       : null,
//                   icon: Icon(
//                     widget.suffix,
//                     color: AppConstants.kLabelForTextFiledColor,
//                     size: 22,
//                   ),
//                 )
//               : null,
//         ),
//         textDirection:
//             BlocProvider.of<ChangeLanguageCubit>(context).lang == 'ar'
//                 ? TextDirection.rtl
//                 : TextDirection.ltr,
//         focusNode: widget.focusNode,
//         maxLines: widget.maxLines,
//         keyboardType: widget.keyboardType,
//         style: AppStyles.style18Normal(context).copyWith(
//           color: AppConstants.kLabelForTextFiledColor,
//         ),
//       ),
//     );
//   }

//   OutlineInputBorder outlineInputBorder({Color? borderColor}) {
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(6),
//       borderSide: BorderSide(
//         color: borderColor ?? AppConstants.kTextFiledBorderColor,
//       ),
//     );
//   }
// }
