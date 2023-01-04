import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle title(BuildContext context) {
    return Theme.of(context).textTheme.headline5!.copyWith(fontSize: 20, color: Colors.grey[700]);
  }
}

TextStyle headline1 = GoogleFonts.roboto(
  fontWeight: FontWeight.w300,
  fontSize: 96,
  letterSpacing: -1.5,
);
TextStyle headline2 = GoogleFonts.roboto(
  fontWeight: FontWeight.w300,
  fontSize: 60,
  letterSpacing: -0.5,
);
TextStyle headline3 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 48,
  letterSpacing: 0,
);
TextStyle headline4 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 34,
  letterSpacing: 0.25,
);
TextStyle headline5 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 24,
  letterSpacing: 0,
);
TextStyle title = GoogleFonts.roboto(
  fontWeight: FontWeight.w600,
  fontSize: 20,
  letterSpacing: 0.15,
);

TextStyle headline6 = GoogleFonts.roboto(
  fontWeight: FontWeight.w500,
  fontSize: 20,
  letterSpacing: 0.15,
);
TextStyle headline9 = GoogleFonts.roboto(
  fontWeight: FontWeight.w500,
  fontSize: 22,
  letterSpacing: 0.15,
);
TextStyle subtitle1 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 16,
  letterSpacing: 0.15,
);
TextStyle subtitle12 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 14,
  letterSpacing: 0.15,
);
TextStyle subtitleLite = GoogleFonts.roboto(
  fontWeight: FontWeight.w300,
  fontSize: 16,
  letterSpacing: 0.45,
);
TextStyle subtitle2 = GoogleFonts.roboto(
  fontWeight: FontWeight.w500,
  fontSize: 14,
  letterSpacing: 0.1,
);
TextStyle subtitle3 = GoogleFonts.roboto(
  fontWeight: FontWeight.w500,
  fontSize: 13,
  letterSpacing: 0.1,
);
TextStyle body1 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 16,
  letterSpacing: 0.5,
);
TextStyle body2 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 14,
  letterSpacing: 0.25,
);
TextStyle body3 = GoogleFonts.roboto(
  fontWeight: FontWeight.w600,
  fontSize: 16,
  letterSpacing: 0.25,
);
TextStyle caption = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 12,
  letterSpacing: 0.4,
);
TextStyle captionLite = GoogleFonts.roboto(
  fontWeight: FontWeight.w300,
  fontSize: 13,
  letterSpacing: 0.4,
);
TextStyle captionSmall = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 10,
  letterSpacing: 0.4,
);
TextStyle dropDownText =
    GoogleFonts.sourceSansPro(fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xff20282A), height: 1.5);

class AppColors {
  AppColors._();

  static const appColor = Color(0xff0BC4F1);
  static const appColorPrimary = Color(0xff187BCD);
  static const primary_bg = Color(0xffecf7fc);
  static const bg_color = Color(0xff050d10);
  static const walkthrough_description_color = Color(0xff20282A);
  static const lite_bg_color = Color(0xff0e181b);
  static const walk_through_title = Color(0xff0BC4F1);
  static const walk_through_desc = Color(0xff20282A);
  static const walk_through_line1 = Color(0xff0BC4F1);
  static const walk_through_line2 = Color(0xffC4C4C4);
  static const allergies_txt_color = Color(0xffC3BBBB);
  static const walk_through_text_color = Color(0xff333333);
  static const tabbar_border_color = Color(0xff0BC4F1);
  static const tabbar_selected_background_color = Color(0xff0BC4F1);
  static const button_gradient_color = [Color(0xff0bc4f1), Color.fromARGB(255, 11, 196, 241)];
  static const InvoicecardGradient = [Color(0xffCB356B), Color.fromARGB(189, 63, 50, 0)];
  static const success_color = Color(0xff00B65F);
  static const text_button_clinic = Color(0xff343C7E);
  static const text_button_vilet = Color(0xff585EFF);
  static const text_color_one = Color(0xff26C06D);
  static const text_color_two = Color(0xff4552BB);
  static const text_color_four = Color(0xff7D8283);
  static const black_shade_one = Color(0xff121313);
  static const arrow_icon_color = Color(0xff189AB4);
  static const txt_color_appointment = Color(0xffD8E5FF);
  static const txt_color_style_one = Color(0xffD5D8D9);
  static const txt_color_style_two = Color(0xff9D9D9D);
  static const text_style_color_add_patient = Color(0xff189AB4);
  static const invoice_card_color = Color(0xffFF6B6B);
  static const container_bg_clinic = Color(0xff187BCD);
  static const white_dark_shade = Color(0xffD6F7FF);
  static const add_session_txt_color = Color(0xff101314);
  static const black_real = Color(0xff000000);
  static const white_shade_one = Color(0xffDCEFFF);
  static const violet_light_one = Color(0xff5E72C1);
  static const txt_color_style_three = Color(0XffE9FAFD);
  static const red_one = Color(0xffFF4F18);
  static const violet_light = Color(0xff8A8DA3);
  static const text_addappointment_color = Color(0xff189AB4);
  static const text_addappointment_color_one = Color(0xffE5FFFD);
  static const button_login = [Color(0xff0BC4F1), Color(0xff0BC4F1)];
  static const background_collor_defaultappbar = Color(0xff187BCD);
  static const icon_button_color = Color(0xff0BC4F1);
  static const consultation_reference_txt_color = Color(0xffE9E9E9);
  static const invoice_text_color = Color(0xff1B82D8);
  static const white_color_one = Color(0xffE0E0E0);
  static const add_patient_invitation_color = Color(0xff02A5CD);
}
