import 'package:flutter/material.dart';
import 'package:linked_unap/screen/pages/splash_screens/components/body.dart';
import 'package:linked_unap/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
//