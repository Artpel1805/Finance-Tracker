import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:saving_goal/app/bloc/user/user_bloc.dart';
import 'package:saving_goal/app/screens/empty_home_screen.dart';
import 'package:saving_goal/app/screens/plans/plans_view.dart';
import 'package:saving_goal/component/buttons/floatting_button.dart';
import 'package:saving_goal/component/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FGTColors.black,
        body: SafeArea(child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.plans.isEmpty
                ? const EmptyHomeScreen()
                : const PlansView();
          },
        )),
        floatingActionButton: FGTFloattingButton(
          onTap: () => context.go('/home/create'),
        ));
  }
}
