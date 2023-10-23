import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kndege/theme/theme_helper.dart';
import 'package:kndege/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'kndege',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.dashboardScreen,
      routes: AppRoutes.routes,
    );
  }
}
