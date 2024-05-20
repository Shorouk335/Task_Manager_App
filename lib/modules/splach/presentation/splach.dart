import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager_app/core/app_utils/extension.dart';
import 'package:task_manager_app/core/router/navigation_service.dart';
import 'package:task_manager_app/core/router/router.dart';
import 'package:task_manager_app/core/theme/dynamic_theme/app_color.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      NavigationService.goNamed(AppRouter.loginRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Image.asset("welcome".jpg())
        ),
      ),
    );
  }
}
