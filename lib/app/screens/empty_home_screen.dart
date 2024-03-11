import 'package:flutter/material.dart';
import 'package:saving_goal/component/text/text.dart';

class EmptyHomeScreen extends StatelessWidget {
  const EmptyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FGTText(
            'Create your first saving goal',
            fontSize: 32,
            fontWeight: FontWeight.w200,
            textAlignement: TextAlign.center,
          ),
          const SizedBox(
            height: 64,
          ),
          Image.asset('assets/chart.png')
        ],
      )),
    );
  }
}
