import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientButton extends StatelessWidget {
  GradientButton({
    Key? key,
    this.horizontalPadding,
    this.vertiaclPadding,
    this.borderRadius,
    this.width,
    this.height,
    this.splashColor,
    this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    required this.isDisabled,
  }) : super(key: key);

  double? horizontalPadding;
  double? vertiaclPadding;
  double? borderRadius;
  double? width;
  double? height;
  Color? splashColor;
  Widget? child;
  Function()? onTap;
  Function()? onDoubleTap;
  Function()? onLongPress;
  bool isDisabled;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 0,
        vertical: vertiaclPadding ?? 0,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: isDisabled ? null : splashColor ?? Colors.blue,
          onTap: isDisabled ? () {} : onTap ?? () {},
          onDoubleTap: isDisabled ? () {} : onDoubleTap ?? () {},
          onLongPress: isDisabled ? () {} : onLongPress ?? () {},
          child: Container(
            width: width ?? size.width,
            height: height ?? size.height / 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 0),
              gradient: LinearGradient(
                colors: [
                  isDisabled ? const Color(0xffE8E8E8) : Palette.appColorPrimary,
                  isDisabled ? const Color(0xffE8E8E8) : Palette.redLight.withOpacity(0.63),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: child,
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}

class Palette {
  static const Color blue = Color(0xff2470B0);
  static const Color darkRed = Color(0xFFA90926);

  static const Color redAccent = Colors.redAccent;
  static const Color white = Colors.white;
  static const Color black = Colors.black87;
  static const Color yellow = Colors.yellow;
  static const Color green = Colors.green;
  static const Color red = Color(0xFFE00000);
  static const Color redLight = Color(0x50E00000);
  static const appColorPrimary = Color(0xff187BCD);

  static const Color lightGrey = Color(0xFFEEEEE8);
  static const Color lightGrey1 = Color.fromARGB(255, 242, 242, 238);
}
