import 'package:flutter/material.dart';
import 'theme_manager.dart';

class ThemeProvider extends InheritedNotifier<ThemeManager> {
  const ThemeProvider({
    super.key,
    required ThemeManager themeManager,
    required super.child,
  }) : super(notifier: themeManager);

  static ThemeManager of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
    assert(provider != null, 'ThemeProvider not found in widget tree');
    return provider!.notifier!;
  }

  static ThemeManager? maybeOf(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
    return provider?.notifier;
  }

  static ThemeData themeOf(BuildContext context) {
    return of(context).currentTheme;
  }

  static ColorScheme colorSchemeOf(BuildContext context) {
    return themeOf(context).colorScheme;
  }

  static TextTheme textThemeOf(BuildContext context) {
    return themeOf(context).textTheme;
  }

  static bool isDarkMode(BuildContext context) {
    return of(context).isDarkMode;
  }

  static bool isLightMode(BuildContext context) {
    return of(context).isLightMode;
  }
}
