
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:task_manager_app/core/app_utils/injection.dart';
import 'package:task_manager_app/core/app_utils/utils.dart';
import 'package:task_manager_app/core/theme/app_theme.dart';
import 'package:task_manager_app/shared/widgets/responsive_framework.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([EasyLocalization.ensureInitialized()]);
   await setupLocator() ;

  // to initial Hive
  // await Hive.initFlutter();
  //to initial adapter
  //  Hive.registerAdapter(PersonTypeAdapter());

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('ar', 'SA'), Locale('en', 'US')],
        startLocale: Locale('en', 'US'),
        saveLocale: true,
        path: 'assets/translations',
        child: const TaskManagerApp()),
  );
}

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AppBasicMason',
      debugShowCheckedModeBanner: false,
    
      routeInformationParser: Utils.appRouter.goRoute.routeInformationParser,
      routeInformationProvider:Utils.appRouter.goRoute.routeInformationProvider,
      routerDelegate: Utils.appRouter.goRoute.routerDelegate,
    
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    
      builder: (context, child) {
        final smartDialog = FlutterSmartDialog.init();
        child = smartDialog(context, child);
        return ResponsineWrapper(child: child);
      },
    
      theme: ThemeManager.appTheme()
    );
  }
}



