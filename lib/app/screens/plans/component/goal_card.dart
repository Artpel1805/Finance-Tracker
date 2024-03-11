import 'package:flutter/material.dart';
import 'package:saving_goal/component/colors.dart';
import 'package:saving_goal/component/text/text.dart';
import 'package:saving_goal/service/calculation.dart';

class GoalCard extends StatelessWidget {
  final DateTime startDate;
  final double percent;
  final double income;
  final double price;
  const GoalCard(
      {super.key,
      required this.startDate,
      required this.price,
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
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FGTText(
            'Goal',
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: FGTColors.grey,
          ),
          FGTText(
            '$price\$',
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: 14,
          ),
          FGTText(
            '${calculatePercentToGoal(startDate, percent, income, price).toInt()}%',
            fontSize: 15,
            color: FGTColors.grey,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(
            height: 4,
          ),
          ProgressBar(
            percent: calculatePercentToGoal(startDate, percent, income, price)
                .toInt(),
          )
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  final int percent;
  const ProgressBar({super.key, this.percent = 0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: double.maxFinite,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: FGTColors.white, width: 0.5)),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: LinearProgressIndicator(
              minHeight: 12,
              backgroundColor: Colors.transparent,
              color: FGTColors.white,
              borderRadius: BorderRadius.circular(15),
              value: percent / 100,
            )),
      ],
    );
  }
}
