import 'package:flutter/material.dart';
import 'package:futter_food/auth/login_or_register.dart';
import 'package:futter_food/models/restaurant.dart';
import 'package:futter_food/pages/register_page.dart';
import 'package:futter_food/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/login_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(

    MultiProvider(providers: [
      //theme provider
      ChangeNotifierProvider(create: (context)=> ThemeProvider()),

      // restaurant provider
      ChangeNotifierProvider(create: (context)=> Restaurant()),
    ],
      child: const MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,


    );
  }
}

