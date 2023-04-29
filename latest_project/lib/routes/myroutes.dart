import 'package:flutter/material.dart';
import 'package:latest_project/view/home.dart';
import 'package:latest_project/view/login.dart';
import 'package:latest_project/view/signup.dart';

class MyRoutes {
  static const String login = "/login";
  static const String signup = "/signup";
  static const String myhome = "/myhome";

  static final Map<String, Widget Function(BuildContext)> routes = {
    login: (context) => const Login(),
    signup: (context) => const Signup(),
    myhome: (context) => const MyHomePage(title: "Welcome"),
  };
}
