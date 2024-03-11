import 'package:flutter/material.dart';
import 'package:saving_goal/component/colors.dart';
import 'package:saving_goal/component/text/text.dart';
import 'package:saving_goal/service/calculation.dart';

class SavedPlanCard extends StatelessWidget {
  final DateTime startDate;
  final double percent;
  final double income;
  const SavedPlanCard(
      {super.key,
      required this.startDate,
      required this.percent,
      required this.income});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
          gradient: FGTColors.linear1,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FGTText(
            'Saved',
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: FGTColors.grey,
          ),
          FGTText(
            '${calculateAmoutSave(startDate, percent, income)}\$',
            fontSize: 24,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
