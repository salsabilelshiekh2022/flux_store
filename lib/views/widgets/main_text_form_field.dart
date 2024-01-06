import 'package:flutter/material.dart';

import '../../constants.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    super.key,
    required this.controller,
    this.focusNode,
    this.keyBoardType,
    this.onEditingComplete,
    this.onSave,
    required this.hintText,
    this.validator,
    this.textInputAction,
  });
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType? keyBoardType;
  final VoidCallback? onEditingComplete;
  final void Function(String?)? onSave;
  final String? Function(String?)? validator;
  final String hintText;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: kDarkColor,
      focusNode: focusNode,
      keyboardType: keyBoardType,
      onEditingComplete: onEditingComplete,
      onSaved: onSave,
      validator: validator,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: kGreyColor2),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kDarkColor),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kGreyColor2),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kGreyColor2),
        ),
      ),
    );
  }
}
