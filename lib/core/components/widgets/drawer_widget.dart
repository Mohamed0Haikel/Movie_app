// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:panara_dialogs/panara_dialogs.dart';
// import '../../../../../constant.dart';
// import '../../../../../core/database/cache_helper.dart';
// import '../../../../../core/services/services_locator.dart';
// import '../../../../../core/utils/assets.dart';
// import '../../../../../core/components/components.dart';
// import '../../../../../core/utils/app_styles.dart';
// import '../../../../../generated/l10n.dart';
// import '../../../Features/select_language/presentation/manager/change_language_cubit/change_language_cubit.dart';
// import '../../services/manger/logout_cubit/logout_cubit.dart';
// import '../../services/manger/logout_cubit/logout_state.dart';


// class DrawerWidget extends StatelessWidget {
//   const DrawerWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: AppConstants.kWhiteColor,
//       child: BackgroundImage(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 40.0,
//           ),
//           child: Column(
//             children: [
//               // _buildDrawerItem(
//               //   context: context,
//               //   icon: Icons.home,
//               //   text: S.of(context).Home,
//               //   onTap: () {
//               //     Navigator.pushReplacement(
//               //       context,
//               //       MaterialPageRoute(
//               //         builder: (context) {
//               //           return const SearchCustomerView();
//               //         },
//               //       ),
//               //     );
//               //   },
//               // ),
//               // _buildDrawerItem(
//               //   context: context,
//               //   icon: Icons.directions_car_filled_outlined,
//               //   text: S.of(context).VehicleList,
//               //   onTap: () {
//               //     Navigator.pushReplacement(
//               //       context,
//               //       MaterialPageRoute(
//               //         builder: (context) {
//               //           return const VehicleListView();
//               //         },
//               //       ),
//               //     );
//               //   },
//               // ),
//               // _buildDrawerItem(
//               //   context: context,
//               //   icon: Icons.receipt_long_outlined,
//               //   text: S.of(context).GetInvoice,
//               //   onTap: () {
//               //     Navigator.pushReplacement(
//               //       context,
//               //       MaterialPageRoute(
//               //         builder: (context) {
//               //           return const CreateInvoiceView();
//               //         },
//               //       ),
//               //     );
//               //   },
//               // ),
//               // _buildDrawerItem(
//               //   context: context,
//               //   icon: Icons.add_task,
//               //   text: S.of(context).todo,
//               //   onTap: () {
//               //     Navigator.pushReplacement(
//               //       context,
//               //       MaterialPageRoute(
//               //         builder: (context) {
//               //           return const TodoView();
//               //         },
//               //       ),
//               //     );
//               //   },
//               // ),
//               // _buildDrawerItem(
//               //   context: context,
//               //   icon: FontAwesomeIcons.gasPump,
//               //   text: S.of(context).fuelFilling,
//               //   onTap: () {
//               //     Navigator.pushReplacement(
//               //       context,
//               //       MaterialPageRoute(
//               //         builder: (context) {
//               //           return const FuelView();
//               //         },
//               //       ),
//               //     );
//               //   },
//               // ),
//               // _buildDrawerItem(
//               //   context: context,
//               //   icon: FontAwesomeIcons.filter,
//               //   text: S.of(context).OilExchange,
//               //   onTap: () {
//               //     Navigator.pushReplacement(
//               //       context,
//               //       MaterialPageRoute(
//               //         builder: (context) {
//               //           return const OilView();
//               //         },
//               //       ),
//               //     );
//               //   },
//               // ),
//               const Spacer(),
//               _buildDrawerItem(
//                 context: context,
//                 icon: Icons.translate,
//                 text: S.of(context).ChangeLanguage,
//                 onTap: () {
//                   PanaraConfirmDialog.showAnimatedFade(
//                     context,
//                     title: S.of(context).ChangeLanguage,
//                     message: S.of(context).ChooseLanguageYouWantToChangeTo,
//                     confirmButtonText: 'العربية',
//                     cancelButtonText: 'English',
//                     onTapCancel: () {
//                       BlocProvider.of<ChangeLanguageCubit>(context)
//                           .changeLang(codeLang: 'en');
//                       Navigator.pop(context);
//                     },
//                     onTapConfirm: () {
//                       BlocProvider.of<ChangeLanguageCubit>(context)
//                           .changeLang(codeLang: 'ar');
//                       Navigator.pop(context);
//                     },
//                     panaraDialogType: PanaraDialogType.normal,
//                     imagePath: Assets.translate,
//                   );
//                 },
//               ),
//               BlocConsumer<LogoutCubit, LogoutState>(
//                 listener: (context, state) {
//                   if (state is LogoutSuccess) {
//                     getIt<CacheHelper>().sharedPreferences.clear();
//                     SystemNavigator.pop();
//                   }
//                 },
//                 builder: (context, state) {
//                   return _buildDrawerItem(
//                     context: context,
//                     icon: Icons.logout,
//                     text: S.of(context).Logout,
//                     onTap: () {
//                       PanaraConfirmDialog.showAnimatedFade(
//                         context,
//                         title: S.of(context).Logout,
//                         message: S.of(context).SureLogout,
//                         confirmButtonText: S.of(context).Logout,
//                         cancelButtonText: S.of(context).Cancel,
//                         onTapCancel: () {
//                           Navigator.pop(context);
//                         },
//                         onTapConfirm: () {
//                           BlocProvider.of<LogoutCubit>(context).logout();
//                         },
//                         panaraDialogType: PanaraDialogType.error,
//                         color: AppConstants.kSecondaryColor,
//                         noImage: true,
//                       );
//                     },
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildDrawerItem({
//     required BuildContext context,
//     required IconData icon,
//     required String text,
//     required VoidCallback onTap,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: AppConstants.kWhiteColor,
//           borderRadius: BorderRadius.circular(8),
//           border: Border.all(
//             color: AppConstants.kContainerColor,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: AppConstants.kContainerColor.withOpacity(0.1),
//               spreadRadius: 1,
//               blurRadius: 5,
//               offset: const Offset(0, 1),
//             ),
//           ],
//         ),
//         child: GestureDetector(
//           onTap: onTap,
//           child: ListTile(
//             leading: Icon(
//               icon,
//               size: 24,
//             ),
//             title: Text(
//               text,
//               style: AppStyles.style18Bold(context),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
