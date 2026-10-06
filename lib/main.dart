import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/tutorial_page.dart';
import 'providers/progress_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ProgressProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia do Mine',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7EA64B),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF202020),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF303030),
          foregroundColor: Color(0xFFF6EEDB),
          centerTitle: false,
        ),
        fontFamily: 'monospace',
      ),
      home: const TutorialPage(),
    );
  }
}
