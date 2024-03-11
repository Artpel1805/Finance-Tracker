import 'package:flutter/material.dart';
import 'package:saving_goal/component/colors.dart';

class FGTPrimaryButton extends StatelessWidget {
  final void Function() onPressed;
  final bool disable;
  final Widget child;

  const FGTPrimaryButton({
    required this.onPressed,
    required this.child,
    this.disable = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disable ? null : onPressed,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: disable ? FGTColors.linear1 : FGTColors.linear2,
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Center(child: child),
      ),
    );
  }
}
