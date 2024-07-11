import 'package:flutter/material.dart';
import 'package:mcd/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final bool isPassword;
  final TextEditingController? controller;
  final double marginBottom;

  const CustomTextField(
      {super.key,
      this.label,
      this.isPassword = false,
      this.controller,
      this.marginBottom = 0,
      this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 12,
            ),
          ),
        if (label != null)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: isPassword,
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(18),
            hintText: hint,
            hintStyle: greyTextStyle,
            fillColor: lightgreyColor,
          ),
        ),
        SizedBox(
          height: marginBottom,
        ),
      ],
    );
  }
}
