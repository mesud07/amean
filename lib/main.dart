import 'package:ameanacademy/core/init/navigation/navigation_service.dart';
import 'package:ameanacademy/core/init/notifier/theme_notifier/theme_notifier.dart';
import 'package:ameanacademy/feature/auth/signin/view/signin_view.dart';
import 'package:ameanacademy/feature/auth/signup/view/signup_view.dart';
import 'package:ameanacademy/feature/homepage/homepageview.dart';
import 'package:ameanacademy/product/init/navigation/navigation_route.dart';
import 'package:ameanacademy/product/init/notifier/provider_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ...ApplicationProvider.instance.dependItems
    ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: NavigationService.instance.navigatorKey,
          onGenerateRoute: NavigationRoute.instance.generateRoute,
         
          title: "AMEAN",
          theme: themeNotifier.currentTheme,
          home: SignUpView()
        );
      },
    );
  }
}

