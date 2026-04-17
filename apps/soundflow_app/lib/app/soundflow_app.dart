import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:sf_design_system/sf_design_system.dart';
import '../features/home/home_screen.dart';

class SoundFlowApp extends StatelessWidget {
  const SoundFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        return MaterialApp(
          title: 'SoundFlow',
          theme: SfTheme.lightTheme(lightDynamic),
          darkTheme: SfTheme.darkTheme(darkDynamic),
          themeMode: ThemeMode.system,
          // For the prototype, we bypass GoRouter temporarily to show the UI immediately
          home: const HomeScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
