import 'package:flutter/material.dart';
import 'package:saving_goal/component/colors.dart';

class FGTFloattingButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  const FGTFloattingButton({super.key, this.icon = Icons.add, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            gradient: FGTColors.linear1,
            borderRadius: BorderRadius.all(Radius.circular(99))),
        height: 55,
        width: 55,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
