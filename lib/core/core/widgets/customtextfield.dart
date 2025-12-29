import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget? icons;
  final Color? backgroundColor;
  final Color? textColor;
  final String hintText;
  final double? width;
  final TextEditingController? controller;
  final VoidCallback? onTap;

  const CustomTextField({
    super.key,
    this.icons,
    this.backgroundColor,
    this.textColor,
    required this.hintText,
    this.width,
    this.controller,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 48,
      child: TextFormField(
        controller: controller,
        onTap: onTap,
        readOnly: onTap != null,
        style: TextStyle(color: textColor ?? Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor ?? Colors.white,
          hintText: hintText,
          prefixIcon: icons != null
              ? Image.asset('assets/images/magnifying.png')
              : null,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
