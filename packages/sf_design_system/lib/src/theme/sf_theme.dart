import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SfTheme {
  // Signature Spotify-inspired green fallback
  static const fallbackSeed = Color(0xFF1DB954); 

  static ThemeData lightTheme(ColorScheme? dynamicColor) {
    final scheme = dynamicColor ?? ColorScheme.fromSeed(seedColor: fallbackSeed, brightness: Brightness.light);
    return _buildTheme(scheme);
  }

  static ThemeData darkTheme(ColorScheme? dynamicColor) {
    final scheme = dynamicColor ?? ColorScheme.fromSeed(seedColor: fallbackSeed, brightness: Brightness.dark);
    return _buildTheme(scheme);
  }

  static ThemeData _buildTheme(ColorScheme scheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      textTheme: GoogleFonts.interTextTheme().apply(
        bodyColor: scheme.onSurface,
        displayColor: scheme.onSurface,
      ),
      navigationBarTheme: NavigationBarThemeData(
        indicatorColor: scheme.secondaryContainer,
        labelTextStyle: WidgetStateProperty.all(
          GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
