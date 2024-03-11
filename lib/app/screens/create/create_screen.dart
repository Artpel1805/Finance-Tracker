import 'package:flutter/material.dart';
import 'package:saving_goal/app/bloc/plan/plan_bloc.dart';
import 'package:saving_goal/app/screens/create/create_page.dart';
import 'package:saving_goal/component/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: FGTColors.black,
      body: BlocProvider(
        create: (context) => PlanBloc(),
        child: const SafeArea(child: CreatePage()),
      ),
    );
  }
}
