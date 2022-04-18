import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:piva/application/localization/localization_cubit.dart';
import 'package:piva/presentation/core/app_widget.dart';

void main() {
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
  runApp(
    BlocProvider(create: (context) => LocalizationCubit(), child: const AppWidget()),
  );
}
