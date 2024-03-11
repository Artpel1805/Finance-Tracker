import 'package:flutter/material.dart';
import 'package:saving_goal/component/colors.dart';

const border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide(color: FGTColors.white));

class FGTTextField extends TextField {
  const FGTTextField(
      {super.key,
      super.controller,
      super.keyboardType,
      super.maxLength,
      super.textCapitalization,
      super.onChanged})
      : super(
            style: const TextStyle(color: FGTColors.white),
            cursorColor: FGTColors.white,
            keyboardAppearance: Brightness.dark,
            decoration: const InputDecoration(
                focusedErrorBorder: border,
                labelStyle:
                    TextStyle(color: FGTColors.white, fontFamily: 'Poppins'),
                errorBorder: InputBorder.none,
                disabledBorder: border,
                focusedBorder: border,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: FGTColors.white))));
}
