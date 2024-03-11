import 'package:flutter/material.dart';
import 'package:saving_goal/component/colors.dart';

class FGTSlider extends Slider {
  const FGTSlider({
    super.key,
    required super.value,
    required super.onChanged,
    super.max,
    super.min,
    super.divisions,
  }) : super(activeColor: FGTColors.white, inactiveColor: FGTColors.grey);
}
