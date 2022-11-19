import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() {
              return Text(
                  controller.stravaAthlete.value.athlete?.firstname ?? '');
            }),
            Obx(() {
              return Text(controller.isAuthenticated.toString());
            }),
            ElevatedButton(
              child: const Text('Connect with Strava'),
              onPressed: () {
                controller.authorize();
              },
            ),
          ],
        ),
      ),
    );
  }
}
