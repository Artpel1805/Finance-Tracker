import 'package:flutter/material.dart';
import 'package:saving_goal/app/model/plans/plan.dart';
import 'package:saving_goal/component/colors.dart';
import 'package:saving_goal/component/text/text.dart';

class PlanCard extends StatelessWidget {
  final Plan plan;
  final double income;
  const PlanCard(this.plan, this.income, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 280,
      decoration: BoxDecoration(
          image: const DecorationImage(
              opacity: 0.05,
              image: AssetImage('assets/noise.png'),
              fit: BoxFit.cover),
          gradient: FGTColors.linear2,
          borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FGTText(
                  'Save',
                  fontSize: 32,
                  fontWeight: FontWeight.w200,
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.edit_outlined,
                    color: FGTColors.white,
                    size: 32,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            FGTText(
              '${(plan.percent * income / 100)}\$',
              fontSize: 64,
              fontWeight: FontWeight.w700,
            ),
            FGTText(
              'each months',
              fontSize: 16,
              fontWeight: FontWeight.w300,
            )
          ],
        ),
      ),
    );
  }
}
