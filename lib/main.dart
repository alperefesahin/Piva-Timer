import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:piva/presentation/widgets/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppWidget());
}
