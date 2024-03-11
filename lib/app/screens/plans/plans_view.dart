import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saving_goal/app/bloc/user/user_bloc.dart';
import 'package:saving_goal/app/model/plans/plan.dart';
import 'package:saving_goal/app/screens/plans/component/goal_card.dart';
import 'package:saving_goal/app/screens/plans/component/plan_card.dart';
import 'package:saving_goal/app/screens/plans/component/remaining_date_card.dart';
import 'package:saving_goal/app/screens/plans/component/saved_card.dart';
import 'package:saving_goal/component/text/text.dart';

class PlansView extends StatelessWidget {
  const PlansView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return PageView.builder(
          itemCount: state.plans.length,
          itemBuilder: ((context, index) => PlanDescription(
              state.plans.elementAt(index),
              income: state.income)),
        );
      },
    );
  }
}

class PlanDescription extends StatelessWidget {
  final Plan plan;
  final double income;
  const PlanDescription(this.plan, {super.key, required this.income});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FGTText(
            plan.name,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: 32,
          ),
          SavedPlanCard(
            startDate: plan.startDate,
            income: income,
            percent: plan.percent,
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: GoalCard(
                    startDate: plan.startDate,
                    price: plan.price,
                    percent: plan.percent,
                    income: income),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: RemainingDateCard(
                    startDate: plan.startDate,
                    price: plan.price,
                    percent: plan.percent,
                    income: income),
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          PlanCard(plan, income),
        ],
      ),
    );
  }
}
