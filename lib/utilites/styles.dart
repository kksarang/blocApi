// import 'dart:ui';

// import 'package:flutter/material.dart';

// import 'dimen.dart';
// import 'palette.dart';

// class AppBoxDecoration {
//   static BoxDecoration rectacleBox = BoxDecoration(
//     boxShadow: [
//       BoxShadow(
//         color: Palette.silver,
//         blurRadius: Dimen.blurRadius,
//       ),
//     ],
//     borderRadius: BorderRadius.circular(Dimen.cornerRadius),
//   );
//   static BoxDecoration rectacleButton = BoxDecoration(
//     borderRadius: BorderRadius.circular(Dimen.buttonCornerRadius),
//     boxShadow: [BoxShadow(color: Palette.silver, blurRadius: Dimen.blurRadius)],
//   );
// }

// class AppTextStyle {
//   static TextStyle headline1 = TextStyle(
//     fontSize: Dimen.headline1,
//     fontWeight: FontWeight.w700,
//     height: 1.0,
//     letterSpacing: 1.0,
//   );

//   static TextStyle headline2 = TextStyle(
//     fontSize: Dimen.headline2,
//     fontWeight: FontWeight.w600,
//     height: 1.0,
//     letterSpacing: 1.0,
//   );

//   static TextStyle body = TextStyle(
//     fontSize: Dimen.body,
//     fontWeight: FontWeight.w600,
//     height: 1.0,
//     letterSpacing: 1.0,
//   );

//   static TextStyle body2 = TextStyle(
//     fontSize: Dimen.body2,
//     fontWeight: FontWeight.w600,
//     height: 1.0,
//     letterSpacing: 1.0,
//   );

//   static TextStyle body3 = TextStyle(
//     fontSize: Dimen.body2,
//     fontWeight: FontWeight.w400,
//     height: 1.0,
//     letterSpacing: 1.0,
//   );

//   static TextStyle caption = TextStyle(
//     fontSize: Dimen.body2,
//     fontWeight: FontWeight.w600,
//     height: 1.0,
//     letterSpacing: 0.5,
//   );

//   // Active tab style
//   static TextStyle bottomNavLabel = TextStyle(
//     fontSize: Dimen.label,
//     fontWeight: FontWeight.w700,
//   );
// }

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../page/login/page/login_form.dart';
import 'gradient_button.dart';

class AppTextFieldDecoration {
  static InputDecoration textFieldDecoration = InputDecoration(
    contentPadding: EdgeInsets.all(16.0),
    fillColor: Color(0xfff9fafb),
    filled: true,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(Dimen.input_control_radius)),
        borderSide: BorderSide(
          width: 1,
        )),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(Dimen.input_control_radius)),
      borderSide: BorderSide(color: Palette.lightGrey1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(Dimen.input_control_radius)),
      borderSide: BorderSide(color: Palette.lightGrey1, width: 2.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(Dimen.input_control_radius)),
      borderSide: BorderSide(color: Colors.red),
    ),
    hintStyle: TextStyle(color: Colors.black),
    labelStyle: TextStyle(color: Colors.black),
  );
  static BoxDecoration selectFieldDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        blurRadius: 4.0,
        color: Color(0x10000000),
      )
    ],
    border: Border.all(
      width: 1.0,
      color: Palette.black,
    ),
    borderRadius: BorderRadius.all(Radius.circular(Dimen.input_control_radius)),
    color: Palette.white,
  );
}

DatePickerTheme dateTimePickerTheme(BuildContext context) {
  return DatePickerTheme(
    cancelStyle: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.grey[700]),
    doneStyle: Theme.of(context).textTheme.headline6!.copyWith(color: Palette.darkRed),
    itemHeight: 48,
    itemStyle: Theme.of(context).textTheme.subtitle2!.copyWith(color: Palette.darkRed),
    containerHeight: 170,
    titleHeight: 48,
  );
}

// //tab theme
// class AppTabTheme {
//   static ThemeData themeRed = ThemeData(primaryColor: Palette.darkOrange);
//   static ThemeData themeGreen = ThemeData(primaryColor: Palette.darkOrange);
//   static ThemeData themePink = ThemeData(primaryColor: Palette.darkOrange);
//   static ThemeData themeBlue = ThemeData(primaryColor: Palette.darkOrange);
//   static ThemeData themeCyanBlue = ThemeData(primaryColor: Palette.darkOrange);
// }

// //page transition
// class SlideBottomRoute extends PageRouteBuilder {
//   final Widget mWidget;
//   final bool mOpaque;

//   SlideBottomRoute({
//     this.mWidget,
//     this.mOpaque = true,
//   }) : super(
//           pageBuilder: (BuildContext context, Animation<double> animation,
//               Animation<double> secondaryAnimation) {
//             return mWidget;
//           },
//           opaque: mOpaque,
//           transitionsBuilder: (BuildContext context,
//               Animation<double> animation,
//               Animation<double> secondaryAnimation,
//               Widget child) {
//             return SlideTransition(
//               position: Tween<Offset>(
//                 begin: Offset(0.0, -1.0),
//                 end: Offset(0, 0),
//               ).animate(animation),
//               child: child,
//             );
//           },
//         );
// }

// class SlideLeftRoute extends PageRouteBuilder {
//   final Widget page;

//   SlideLeftRoute({this.page})
//       : super(
//           pageBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) =>
//               page,
//           transitionsBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//             Widget child,
//           ) =>
//               SlideTransition(
//             position: Tween<Offset>(
//               begin: const Offset(1, 0),
//               end: Offset.zero,
//             ).animate(animation),
//             child: child,
//           ),
//         );
// }
