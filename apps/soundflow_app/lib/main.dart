import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app/soundflow_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Riverpod ProviderScope and run the app
  runApp(const ProviderScope(child: SoundFlowApp()));
}
