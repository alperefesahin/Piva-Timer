
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piva/application/cubit/sign_up/sign_up_cubit.dart';
import 'package:piva/presentation/forms/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => SignUpCubit(),
        child: const SignUpForm(),
      ),
    );
  }
}
