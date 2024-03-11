import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:saving_goal/app/bloc/plan/plan_bloc.dart';
import 'package:saving_goal/app/bloc/user/user_bloc.dart';
import 'package:saving_goal/app/model/plans/plan.dart';
import 'package:saving_goal/app/screens/create/income_container.dart';
import 'package:saving_goal/component/buttons/primary_button.dart';
import 'package:saving_goal/component/colors.dart';
import 'package:saving_goal/component/slider/slider.dart';
import 'package:saving_goal/component/text/text.dart';
import 'package:saving_goal/component/text_field/text_field.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragStart: (_) {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      onTapDown: (_) {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => context.pop(),
                child: FGTText(
                  'Cancel',
                  color: FGTColors.grey,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              const CreateBody(),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              BlocBuilder<PlanBloc, PlanState>(
                builder: (context, state) {
                  return FGTPrimaryButton(
                    disable: !state.isValid(),
                    child: FGTText(
                      'Create Saving Plan',
                      fontWeight: FontWeight.w300,
                    ),
                    onPressed: () => {
                      context.read<UserBloc>().add(PlanAdded(
                          plan: Plan(
                              startDate: DateTime.now(),
                              name: state.name ?? 'Plan',
                              price: state.price ?? 0.0,
                              percent: state.percent ?? 0.0))),
                      context.go('/home')
                    },
                  );
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class CreateBody extends StatelessWidget {
  const CreateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return IncomeContainer(
              income: state.income,
            );
          },
        ),
        const SizedBox(
          height: 24.0,
        ),
        FGTText(
          'Name',
          fontWeight: FontWeight.w600,
          color: FGTColors.grey,
        ),
        const SizedBox(
          height: 4.0,
        ),
        FGTTextField(
          onChanged: (value) =>
              context.read<PlanBloc>().add(NameChanged(name: value)),
          textCapitalization: TextCapitalization.words,
        ),
        const SizedBox(
          height: 16.0,
        ),
        FGTText(
          'Price',
          fontWeight: FontWeight.w600,
          color: FGTColors.grey,
        ),
        const SizedBox(
          height: 4.0,
        ),
        FGTTextField(
          keyboardType: TextInputType.number,
          onChanged: (value) => context
              .read<PlanBloc>()
              .add(PriceChanged(price: double.tryParse(value))),
        ),
        const SizedBox(
          height: 24.0,
        ),
        const PercentSlider(),
      ],
    );
  }
}

class PercentSlider extends StatelessWidget {
  const PercentSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlanBloc, PlanState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FGTText(
              'Dedicated Budget : ${state.percent?.toInt() ?? 0}%',
              fontWeight: FontWeight.w600,
              color: FGTColors.grey,
            ),
            const SizedBox(
              height: 8.0,
            ),
            FGTSlider(
              value: state.percent ?? 0.0,
              onChanged: (value) =>
                  context.read<PlanBloc>().add(PercentChanged(percent: value)),
              min: 0,
              max: 100,
              divisions: 200,
            ),
            const SizedBox(
              height: 8.0,
            ),
          ],
        );
      },
    );
  }
}
