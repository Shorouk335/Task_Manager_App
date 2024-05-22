import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager_app/core/router/navigation_service.dart';
import 'package:task_manager_app/core/router/router.dart';
import 'package:task_manager_app/shared/widgets/showSmartDialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
         child:  InkWell(
          onTap: (){
           ShowSmartDialog.show();
            // NavigationService.pushNamed(AppRouter.loginRoute);
          },
          child: Text("home"))
        ),
      ),
    );
  }
}