import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piva/application/cubit/login/login_cubit.dart';
import 'package:piva/presentation/widgets/login_pages_widgets/home_page_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => LoginCubit(),
        child: HomePageBody(),
      ),
    );
  }
}
