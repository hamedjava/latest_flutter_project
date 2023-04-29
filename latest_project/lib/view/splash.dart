import 'package:flutter/material.dart';
import 'package:latest_project/routes/myroutes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    moveToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 44, 44),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const <Widget>[
            Text(
              "Splash",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Future moveToHome() async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, MyRoutes.myhome);
      },
    );
  }
}
