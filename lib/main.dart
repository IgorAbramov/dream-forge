import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/theme/theme.dart';
import 'core/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: DreamForgeApp()));
}

class DreamForgeApp extends StatefulWidget {
  const DreamForgeApp({super.key});

  @override
  State<DreamForgeApp> createState() => _DreamForgeAppState();
}

class _DreamForgeAppState extends State<DreamForgeApp> {
  late final ThemeManager _themeManager;

  @override
  void initState() {
    super.initState();
    _themeManager = ThemeManager();
    _themeManager.initialize();
  }

  @override
  void dispose() {
    _themeManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themeManager: _themeManager,
      child: AnimatedBuilder(
        animation: _themeManager,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'DreamForge',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: _themeManager.themeMode,
            routerConfig: AppRouter.router,
          );
        },
      ),
    );
  }
}

