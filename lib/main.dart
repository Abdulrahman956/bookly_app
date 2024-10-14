import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'feature/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}
