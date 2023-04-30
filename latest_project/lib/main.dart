import 'dart:js';

import 'package:flutter/material.dart';
import 'package:latest_project/controller/home_state.dart';
import 'package:latest_project/controller/login_state.dart';
import 'package:latest_project/controller/signup_state.dart';
import 'package:latest_project/routes/myroutes.dart';
import 'package:latest_project/view/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<LoginState>(create: (_) => LoginState()),
      ChangeNotifierProvider<SignupState>(create: (_) => SignupState()),
      ChangeNotifierProvider<HomeState>(
          create: (_) => HomeState(context as BuildContext)),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: MyRoutes.routes,
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
