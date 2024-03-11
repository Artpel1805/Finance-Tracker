import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:saving_goal/app/bloc/user/user_bloc.dart';
import 'package:saving_goal/component/buttons/primary_button.dart';
import 'package:saving_goal/component/colors.dart';
import 'package:saving_goal/component/text/text.dart';
import 'package:saving_goal/component/text_field/text_field.dart';

class IncomePage extends StatelessWidget {
  final void Function(double)? onChanged;
  const IncomePage({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    TextEditingController incomeController = TextEditingController();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: FGTColors.black,
        body: Padding(
          padding: const EdgeInsets.all(64.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FGTText(
                  'Incomes',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 16,
                ),
                FGTTextField(
                  keyboardType: TextInputType.number,
                  controller: incomeController,
                ),
                const SizedBox(
                  height: 64,
                ),
                FGTPrimaryButton(
                    onPressed: () {
                      context.pop();
                      FocusScopeNode currentFocus = FocusScope.of(context);

                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                      if (onChanged != null) {
                        onChanged!(
                            double.tryParse(incomeController.text) ?? 0.0);
                      }
                    },
                    child: FGTText('Change Incomes'))
              ],
            ),
          ),
        ));
  }
}

void showUserBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    useRootNavigator: false,
    builder: (context) => IncomePage(
      onChanged: (value) {
        context.read<UserBloc>().add(ChangedIncome(income: value));
      },
    ),
    isScrollControlled: true,
  ).then((value) {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  });
}
