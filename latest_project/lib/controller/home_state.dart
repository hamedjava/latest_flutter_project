import 'package:flutter/material.dart';
import 'package:latest_project/routes/myroutes.dart';

class HomeState extends ChangeNotifier {
  BuildContext context;
  HomeState(this.context);
  Future navigateToHome() async {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.pushNamed(context, MyRoutes.myhome);
      },
    );
  }
}
