import 'package:flutter/material.dart';
import 'package:saving_goal/app/screens/user/income_page.dart';
import 'package:saving_goal/component/colors.dart';
import 'package:saving_goal/component/text/text.dart';

class IncomeContainer extends StatelessWidget {
  final double income;
  const IncomeContainer({super.key, this.income = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
          gradient: FGTColors.linear1,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      height: 149,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FGTText(
                'Incomes',
                fontSize: 32,
                fontWeight: FontWeight.w200,
              ),
              GestureDetector(
                onTap: () => showUserBottomSheet(context),
                child: const Icon(
                  Icons.edit_outlined,
                  color: FGTColors.grey,
                ),
              )
            ],
          ),
          FGTText(
            '$income\$',
            fontSize: 24,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
