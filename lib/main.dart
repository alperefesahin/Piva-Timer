import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:piva/presentation/pages/timer_page/timer_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, title: 'Piva', home: TimerPage());
  }
}
