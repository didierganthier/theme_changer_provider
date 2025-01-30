import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer_provider/home_screen.dart';
import 'package:theme_changer_provider/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, provider, child) {
      return MaterialApp(
        title: 'Theme Changer',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData.dark(useMaterial3: true),
        themeMode: provider.themeMode,
        home: const HomeScreen(),
      );
    });
  }
}
