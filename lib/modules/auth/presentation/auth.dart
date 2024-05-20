import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager_app/core/router/navigation_service.dart';
import 'package:task_manager_app/core/router/router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    NavigationService.goNamed(AppRouter.splachRoute);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20.0),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
