import 'package:flutter/material.dart';
import 'core/theme/theme.dart';
import 'core/widgets/theme_demo_widget.dart';

void main() {
  runApp(const DreamForgeApp());
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
          return MaterialApp(
            title: 'DreamForge',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: _themeManager.themeMode,
            home: const DreamForgeHomePage(),
          );
        },
      ),
    );
  }
}

class DreamForgeHomePage extends StatefulWidget {
  const DreamForgeHomePage({super.key});

  @override
  State<DreamForgeHomePage> createState() => _DreamForgeHomePageState();
}

class _DreamForgeHomePageState extends State<DreamForgeHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggleTheme() {
    ThemeProvider.of(context).toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    final themeManager = ThemeProvider.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('DreamForge'),
        actions: [
          IconButton(
            onPressed: _toggleTheme,
            icon: Icon(
              themeManager.isDarkMode ? Icons.light_mode : Icons.dark_mode,
            ),
            tooltip: 'Toggle theme',
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Dream title example
            Text('Welcome to DreamForge', style: textTheme.displayMedium, textAlign: TextAlign.center),
            const SizedBox(height: 24),
            
            // Goal title example
            Text('Your Goal', style: textTheme.headlineMedium),
            const SizedBox(height: 16),
            
            // Quest title example
            Text('Daily Quest', style: textTheme.titleLarge),
            const SizedBox(height: 24),
            
            // XP text example
            Text('XP: $_counter', style: textTheme.labelLarge),
            const SizedBox(height: 24),
            
            // Theme demo widget
            const ThemeDemoWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment XP',
        child: const Icon(Icons.add),
      ),
    );
  }
}
