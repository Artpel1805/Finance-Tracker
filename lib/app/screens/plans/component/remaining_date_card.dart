import 'package:flutter/material.dart';
import 'package:saving_goal/component/colors.dart';
import 'package:saving_goal/component/text/text.dart';
import 'package:saving_goal/service/calculation.dart';

class RemainingDateCard extends StatelessWidget {
  final DateTime startDate;
  final double percent;
  final double income;
  final double price;
  const RemainingDateCard(
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
            'Achieve in',
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: FGTColors.grey,
          ),
          const SizedBox(
            height: 8,
          ),
          Column(
            children: [
              FGTText(
                '${numberOfDayReeachGoal(income: income, startDate: startDate, percent: percent, price: price)}',
                fontSize: 26,
                fontWeight: FontWeight.w800,
              ),
              const SizedBox(
                height: 0,
              ),
              FGTText(
                'Days',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 0,
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
