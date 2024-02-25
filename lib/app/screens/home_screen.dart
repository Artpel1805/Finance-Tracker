import 'package:flutter/material.dart';
import 'package:flutter_artpel1805_template/app/bloc/counter/counter_cubit.dart';
import 'package:flutter_artpel1805_template/app/screens/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const  HomePage(),
    );
  }
}
