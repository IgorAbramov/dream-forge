import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_theme.dart';

class ThemeManager extends ChangeNotifier {
  static const String _themeKey = 'theme_mode';
  
  ThemeMode _themeMode = ThemeMode.system;
  bool _isInitialized = false;

  ThemeMode get themeMode => _themeMode;

  bool get isInitialized => _isInitialized;

  bool get isDarkMode {
    if (_themeMode == ThemeMode.system) {
      return WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
    }
    return _themeMode == ThemeMode.dark;
  }

  bool get isLightMode => !isDarkMode;

  ThemeData get currentTheme {
    if (isDarkMode) {
      return AppTheme.darkTheme;
    }
    return AppTheme.lightTheme;
  }

  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      final prefs = await SharedPreferences.getInstance();
      final themeIndex = prefs.getInt(_themeKey) ?? ThemeMode.system.index;
      _themeMode = ThemeMode.values[themeIndex];
      _isInitialized = true;
      notifyListeners();
    } catch (e) {
      _themeMode = ThemeMode.system;
      _isInitialized = true;
      notifyListeners();
    }
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    if (_themeMode == mode) return;

    _themeMode = mode;
    notifyListeners();

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_themeKey, mode.index);
    } catch (e) {
    }
  }

  Future<void> toggleTheme() async {
    if (_themeMode == ThemeMode.light) {
      await setThemeMode(ThemeMode.dark);
    } else if (_themeMode == ThemeMode.dark) {
      await setThemeMode(ThemeMode.light);
    } else {
      await setThemeMode(ThemeMode.light);
    }
  }

  Future<void> setLightTheme() async {
    await setThemeMode(ThemeMode.light);
  }

  Future<void> setDarkTheme() async {
    await setThemeMode(ThemeMode.dark);
  }

  Future<void> setSystemTheme() async {
    await setThemeMode(ThemeMode.system);
  }

  String getThemeModeDisplayName() {
    switch (_themeMode) {
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.system:
        return 'System';
    }
  }

  String getThemeModeDescription() {
    switch (_themeMode) {
      case ThemeMode.light:
        return 'Always use light theme';
      case ThemeMode.dark:
        return 'Always use dark theme';
      case ThemeMode.system:
        return 'Follow system theme';
    }
  }

  List<ThemeModeOption> getAvailableThemeModes() {
    return [
      ThemeModeOption(
        mode: ThemeMode.light,
        name: 'Light',
        description: 'Always use light theme',
        icon: Icons.light_mode,
      ),
      ThemeModeOption(
        mode: ThemeMode.dark,
        name: 'Dark',
        description: 'Always use dark theme',
        icon: Icons.dark_mode,
      ),
      ThemeModeOption(
        mode: ThemeMode.system,
        name: 'System',
        description: 'Follow system theme',
        icon: Icons.settings_system_daydream,
      ),
    ];
  }
}

class ThemeModeOption {
  final ThemeMode mode;
  final String name;
  final String description;
  final IconData icon;

  const ThemeModeOption({
    required this.mode,
    required this.name,
    required this.description,
    required this.icon,
  });
}
