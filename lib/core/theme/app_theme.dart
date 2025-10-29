import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';
import '../constants/app_animations.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: _lightColorScheme,
      textTheme: _lightTextTheme,
      appBarTheme: _lightAppBarTheme,
      elevatedButtonTheme: _lightElevatedButtonTheme,
      outlinedButtonTheme: _lightOutlinedButtonTheme,
      textButtonTheme: _lightTextButtonTheme,
      floatingActionButtonTheme: _lightFloatingActionButtonTheme,
      inputDecorationTheme: _lightInputDecorationTheme,
      bottomNavigationBarTheme: _lightBottomNavigationBarTheme,
      navigationBarTheme: _lightNavigationBarTheme,
      drawerTheme: _lightDrawerTheme,
      listTileTheme: _lightListTileTheme,
      dividerTheme: _lightDividerTheme,
      chipTheme: _lightChipTheme,
      progressIndicatorTheme: _lightProgressIndicatorTheme,
      switchTheme: _lightSwitchTheme,
      checkboxTheme: _lightCheckboxTheme,
      radioTheme: _lightRadioTheme,
      sliderTheme: _lightSliderTheme,
      bottomSheetTheme: _lightBottomSheetTheme,
      snackBarTheme: _lightSnackBarTheme,
      tooltipTheme: _lightTooltipTheme,
      popupMenuTheme: _lightPopupMenuTheme,
      pageTransitionsTheme: _pageTransitionsTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: _darkColorScheme,
      textTheme: _darkTextTheme,
      appBarTheme: _darkAppBarTheme,
      elevatedButtonTheme: _darkElevatedButtonTheme,
      outlinedButtonTheme: _darkOutlinedButtonTheme,
      textButtonTheme: _darkTextButtonTheme,
      floatingActionButtonTheme: _darkFloatingActionButtonTheme,
      inputDecorationTheme: _darkInputDecorationTheme,
      bottomNavigationBarTheme: _darkBottomNavigationBarTheme,
      navigationBarTheme: _darkNavigationBarTheme,
      drawerTheme: _darkDrawerTheme,
      listTileTheme: _darkListTileTheme,
      dividerTheme: _darkDividerTheme,
      chipTheme: _darkChipTheme,
      progressIndicatorTheme: _darkProgressIndicatorTheme,
      switchTheme: _darkSwitchTheme,
      checkboxTheme: _darkCheckboxTheme,
      radioTheme: _darkRadioTheme,
      sliderTheme: _darkSliderTheme,
      bottomSheetTheme: _darkBottomSheetTheme,
      snackBarTheme: _darkSnackBarTheme,
      tooltipTheme: _darkTooltipTheme,
      popupMenuTheme: _darkPopupMenuTheme,
      pageTransitionsTheme: _pageTransitionsTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  static ColorScheme get _lightColorScheme {
    return const ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      primaryContainer: AppColors.primaryVariant,
      onPrimaryContainer: AppColors.onPrimary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      secondaryContainer: AppColors.secondaryVariant,
      onSecondaryContainer: AppColors.onSecondary,
      tertiary: AppColors.info,
      onTertiary: AppColors.onPrimary,
      tertiaryContainer: AppColors.neutral100,
      onTertiaryContainer: AppColors.onSurface,
      error: AppColors.error,
      onError: AppColors.onPrimary,
      errorContainer: AppColors.neutral100,
      onErrorContainer: AppColors.error,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
      surfaceContainerHighest: AppColors.surfaceVariant,
      onSurfaceVariant: AppColors.onSurfaceVariant,
      outline: AppColors.neutral300,
      outlineVariant: AppColors.neutral200,
      shadow: AppColors.shadowLight,
      scrim: AppColors.shadowMedium,
      inverseSurface: AppColors.neutral800,
      onInverseSurface: AppColors.neutral100,
      inversePrimary: AppColors.primaryVariant,
      surfaceTint: AppColors.primary,
    );
  }

  static ColorScheme get _darkColorScheme {
    return const ColorScheme.dark(
      primary: AppColors.darkPrimary,
      onPrimary: AppColors.darkOnPrimary,
      primaryContainer: AppColors.darkPrimaryVariant,
      onPrimaryContainer: AppColors.darkOnPrimary,
      secondary: AppColors.darkSecondary,
      onSecondary: AppColors.darkOnSecondary,
      secondaryContainer: AppColors.darkSecondaryVariant,
      onSecondaryContainer: AppColors.darkOnSecondary,
      tertiary: AppColors.darkInfo,
      onTertiary: AppColors.darkOnPrimary,
      tertiaryContainer: AppColors.darkSurfaceVariant,
      onTertiaryContainer: AppColors.darkOnSurface,
      error: AppColors.darkError,
      onError: AppColors.darkOnPrimary,
      errorContainer: AppColors.darkSurfaceVariant,
      onErrorContainer: AppColors.darkError,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkOnSurface,
      surfaceContainerHighest: AppColors.darkSurfaceVariant,
      onSurfaceVariant: AppColors.darkOnSurfaceVariant,
      outline: AppColors.neutral600,
      outlineVariant: AppColors.neutral700,
      shadow: AppColors.darkShadowLight,
      scrim: AppColors.darkShadowMedium,
      inverseSurface: AppColors.neutral100,
      onInverseSurface: AppColors.neutral800,
      inversePrimary: AppColors.darkPrimaryVariant,
      surfaceTint: AppColors.darkPrimary,
    );
  }

  static TextTheme get _lightTextTheme {
    return TextTheme(
      // Headers
      displayLarge: const TextStyle(fontSize: 36.0, fontWeight: FontWeight.w700, letterSpacing: -0.25, height: 1.12, color: AppColors.onSurface),
      displayMedium: const TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.16, color: AppColors.onSurface),
      displaySmall: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.22, color: AppColors.onSurface),
      headlineLarge: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.25, color: AppColors.onSurface),
      headlineMedium: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.29, color: AppColors.onSurface),
      headlineSmall: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, letterSpacing: 0.0, height: 1.33, color: AppColors.onSurface),
      // Titles
      titleLarge: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.30, color: AppColors.onSurface),
      titleMedium: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, letterSpacing: 0.15, height: 1.50, color: AppColors.onSurface),
      titleSmall: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.10, height: 1.43, color: AppColors.onSurface),
      // Body
      bodyLarge: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5, height: 1.50, color: AppColors.onSurface),
      bodyMedium: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25, height: 1.43, color: AppColors.onSurface),
      bodySmall: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4, height: 1.33, color: AppColors.onSurfaceVariant),
      // Labels
      labelLarge: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, letterSpacing: 0.10, height: 1.43, color: AppColors.onSurface),
      labelMedium: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.33, color: AppColors.onSurfaceVariant),
      labelSmall: const TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.45, color: AppColors.onSurfaceVariant),
    );
  }

  static TextTheme get _darkTextTheme {
    return TextTheme(
      // Headers
      displayLarge: const TextStyle(fontSize: 36.0, fontWeight: FontWeight.w700, letterSpacing: -0.25, height: 1.12, color: AppColors.darkOnSurface),
      displayMedium: const TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.16, color: AppColors.darkOnSurface),
      displaySmall: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.22, color: AppColors.darkOnSurface),
      headlineLarge: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.25, color: AppColors.darkOnSurface),
      headlineMedium: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.29, color: AppColors.darkOnSurface),
      headlineSmall: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, letterSpacing: 0.0, height: 1.33, color: AppColors.darkOnSurface),
      // Titles
      titleLarge: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.30, color: AppColors.darkOnSurface),
      titleMedium: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, letterSpacing: 0.15, height: 1.50, color: AppColors.darkOnSurface),
      titleSmall: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.10, height: 1.43, color: AppColors.darkOnSurface),
      // Body
      bodyLarge: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5, height: 1.50, color: AppColors.darkOnSurface),
      bodyMedium: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25, height: 1.43, color: AppColors.darkOnSurface),
      bodySmall: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4, height: 1.33, color: AppColors.darkOnSurface),
      // Labels
      labelLarge: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, letterSpacing: 0.10, height: 1.43, color: AppColors.darkOnSurface),
      labelMedium: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.33, color: AppColors.darkOnSurface),
      labelSmall: const TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.45, color: AppColors.darkOnSurface),
    );
  }

  static AppBarTheme get _lightAppBarTheme {
    return AppBarTheme(
      backgroundColor: AppColors.surface,
      foregroundColor: AppColors.onSurface,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  static AppBarTheme get _darkAppBarTheme {
    return AppBarTheme(
      backgroundColor: AppColors.darkSurface,
      foregroundColor: AppColors.darkOnSurface,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }

  static ElevatedButtonThemeData get _lightElevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        elevation: 2,
        shadowColor: AppColors.shadowLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing24,
          vertical: AppDimensions.spacing12,
        ),
        minimumSize: const Size(0, AppDimensions.buttonHeightMedium),
      ),
    );
  }

  static ElevatedButtonThemeData get _darkElevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkPrimary,
        foregroundColor: AppColors.darkOnPrimary,
        elevation: 2,
        shadowColor: AppColors.darkShadowLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing24,
          vertical: AppDimensions.spacing12,
        ),
        minimumSize: const Size(0, AppDimensions.buttonHeightMedium),
      ),
    );
  }

  static OutlinedButtonThemeData get _lightOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing24,
          vertical: AppDimensions.spacing12,
        ),
        minimumSize: const Size(0, AppDimensions.buttonHeightMedium),
      ),
    );
  }

  static OutlinedButtonThemeData get _darkOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.darkPrimary,
        side: const BorderSide(color: AppColors.darkPrimary, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing24,
          vertical: AppDimensions.spacing12,
        ),
        minimumSize: const Size(0, AppDimensions.buttonHeightMedium),
      ),
    );
  }

  static TextButtonThemeData get _lightTextButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius8),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing16,
          vertical: AppDimensions.spacing8,
        ),
        minimumSize: const Size(0, AppDimensions.buttonHeightSmall),
      ),
    );
  }

  static TextButtonThemeData get _darkTextButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.darkPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius8),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing16,
          vertical: AppDimensions.spacing8,
        ),
        minimumSize: const Size(0, AppDimensions.buttonHeightSmall),
      ),
    );
  }

  static FloatingActionButtonThemeData get _lightFloatingActionButtonTheme {
    return FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.onPrimary,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius16),
      ),
    );
  }

  static FloatingActionButtonThemeData get _darkFloatingActionButtonTheme {
    return FloatingActionButtonThemeData(
      backgroundColor: AppColors.darkPrimary,
      foregroundColor: AppColors.darkOnPrimary,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius16),
      ),
    );
  }

  static CardTheme get _lightCardTheme {
    return CardTheme(
      color: AppColors.surface,
      shadowColor: AppColors.shadowLight,
      elevation: AppDimensions.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius16),
      ),
      margin: const EdgeInsets.all(AppDimensions.spacing8),
    );
  }

  static CardTheme get _darkCardTheme {
    return CardTheme(
      color: AppColors.darkSurface,
      shadowColor: AppColors.darkShadowLight,
      elevation: AppDimensions.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius16),
      ),
      margin: const EdgeInsets.all(AppDimensions.spacing8),
    );
  }

  static InputDecorationTheme get _lightInputDecorationTheme {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceVariant,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
        borderSide: const BorderSide(color: AppColors.neutral300),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
        borderSide: const BorderSide(color: AppColors.neutral300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
        borderSide: const BorderSide(color: AppColors.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
        borderSide: const BorderSide(color: AppColors.error, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing16,
        vertical: AppDimensions.spacing12,
      ),
    );
  }

  static InputDecorationTheme get _darkInputDecorationTheme {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkSurfaceVariant,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
        borderSide: const BorderSide(color: AppColors.neutral600),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
        borderSide: const BorderSide(color: AppColors.neutral600),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
        borderSide: const BorderSide(color: AppColors.darkPrimary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
        borderSide: const BorderSide(color: AppColors.darkError),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
        borderSide: const BorderSide(color: AppColors.darkError, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing16,
        vertical: AppDimensions.spacing12,
      ),
    );
  }

  static BottomNavigationBarThemeData get _lightBottomNavigationBarTheme {
    return BottomNavigationBarThemeData(
      backgroundColor: AppColors.surface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.onSurfaceVariant,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    );
  }

  static BottomNavigationBarThemeData get _darkBottomNavigationBarTheme {
    return BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkSurface,
      selectedItemColor: AppColors.darkPrimary,
      unselectedItemColor: AppColors.darkOnSurfaceVariant,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    );
  }

  static NavigationBarThemeData get _lightNavigationBarTheme {
    return NavigationBarThemeData(
      backgroundColor: AppColors.surface,
      indicatorColor: AppColors.primaryVariant,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: AppColors.primary);
        }
        return const IconThemeData(color: AppColors.onSurfaceVariant);
      }),
    );
  }

  static NavigationBarThemeData get _darkNavigationBarTheme {
    return NavigationBarThemeData(
      backgroundColor: AppColors.darkSurface,
      indicatorColor: AppColors.darkPrimaryVariant,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: AppColors.darkPrimary);
        }
        return const IconThemeData(color: AppColors.darkOnSurfaceVariant);
      }),
    );
  }

  static DrawerThemeData get _lightDrawerTheme {
    return DrawerThemeData(
      backgroundColor: AppColors.surface,
      elevation: 16,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppDimensions.radius16),
          bottomRight: Radius.circular(AppDimensions.radius16),
        ),
      ),
    );
  }

  static DrawerThemeData get _darkDrawerTheme {
    return DrawerThemeData(
      backgroundColor: AppColors.darkSurface,
      elevation: 16,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppDimensions.radius16),
          bottomRight: Radius.circular(AppDimensions.radius16),
        ),
      ),
    );
  }

  static ListTileThemeData get _lightListTileTheme {
    return ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing16,
        vertical: AppDimensions.spacing8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
      ),
      tileColor: Colors.transparent,
      selectedTileColor: AppColors.primaryVariant.withOpacity(0.1),
      textColor: AppColors.onSurface,
      iconColor: AppColors.onSurfaceVariant,
    );
  }

  static ListTileThemeData get _darkListTileTheme {
    return ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing16,
        vertical: AppDimensions.spacing8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
      ),
      tileColor: Colors.transparent,
      selectedTileColor: AppColors.darkPrimaryVariant.withOpacity(0.1),
      textColor: AppColors.darkOnSurface,
      iconColor: AppColors.darkOnSurfaceVariant,
    );
  }

  static DividerThemeData get _lightDividerTheme {
    return const DividerThemeData(
      color: AppColors.neutral200,
      thickness: AppDimensions.dividerThickness,
      space: AppDimensions.spacing16,
    );
  }

  static DividerThemeData get _darkDividerTheme {
    return const DividerThemeData(
      color: AppColors.neutral700,
      thickness: AppDimensions.dividerThickness,
      space: AppDimensions.spacing16,
    );
  }

  static ChipThemeData get _lightChipTheme {
    return ChipThemeData(
      backgroundColor: AppColors.surfaceVariant,
      selectedColor: AppColors.primaryVariant,
      disabledColor: AppColors.neutral200,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing12,
        vertical: AppDimensions.spacing4,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius20),
      ),
    );
  }

  static ChipThemeData get _darkChipTheme {
    return ChipThemeData(
      backgroundColor: AppColors.darkSurfaceVariant,
      selectedColor: AppColors.darkPrimaryVariant,
      disabledColor: AppColors.neutral700,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing12,
        vertical: AppDimensions.spacing4,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius20),
      ),
    );
  }

  static ProgressIndicatorThemeData get _lightProgressIndicatorTheme {
    return const ProgressIndicatorThemeData(
      color: AppColors.primary,
      linearTrackColor: AppColors.neutral200,
      circularTrackColor: AppColors.neutral200,
    );
  }

  static ProgressIndicatorThemeData get _darkProgressIndicatorTheme {
    return const ProgressIndicatorThemeData(
      color: AppColors.darkPrimary,
      linearTrackColor: AppColors.neutral700,
      circularTrackColor: AppColors.neutral700,
    );
  }

  static SwitchThemeData get _lightSwitchTheme {
    return SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        return AppColors.neutral400;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary.withOpacity(0.5);
        }
        return AppColors.neutral300;
      }),
    );
  }

  static SwitchThemeData get _darkSwitchTheme {
    return SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.darkPrimary;
        }
        return AppColors.neutral500;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.darkPrimary.withOpacity(0.5);
        }
        return AppColors.neutral600;
      }),
    );
  }

  static CheckboxThemeData get _lightCheckboxTheme {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(AppColors.onPrimary),
      side: const BorderSide(color: AppColors.neutral400, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius4),
      ),
    );
  }

  static CheckboxThemeData get _darkCheckboxTheme {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.darkPrimary;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(AppColors.darkOnPrimary),
      side: const BorderSide(color: AppColors.neutral500, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius4),
      ),
    );
  }

  static RadioThemeData get _lightRadioTheme {
    return RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        return AppColors.neutral400;
      }),
    );
  }

  static RadioThemeData get _darkRadioTheme {
    return RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.darkPrimary;
        }
        return AppColors.neutral500;
      }),
    );
  }

  static SliderThemeData get _lightSliderTheme {
    return SliderThemeData(
      activeTrackColor: AppColors.primary,
      inactiveTrackColor: AppColors.neutral300,
      thumbColor: AppColors.primary,
      overlayColor: AppColors.primary.withOpacity(0.1),
      valueIndicatorColor: AppColors.primary,
    );
  }

  static SliderThemeData get _darkSliderTheme {
    return SliderThemeData(
      activeTrackColor: AppColors.darkPrimary,
      inactiveTrackColor: AppColors.neutral600,
      thumbColor: AppColors.darkPrimary,
      overlayColor: AppColors.darkPrimary.withOpacity(0.1),
      valueIndicatorColor: AppColors.darkPrimary,
    );
  }

  static TabBarTheme get _lightTabBarTheme {
    return TabBarTheme(
      labelColor: AppColors.primary,
      unselectedLabelColor: AppColors.onSurfaceVariant,
      indicator: UnderlineTabIndicator(
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
        insets: const EdgeInsets.symmetric(horizontal: AppDimensions.spacing16),
      ),
    );
  }

  static TabBarTheme get _darkTabBarTheme {
    return TabBarTheme(
      labelColor: AppColors.darkPrimary,
      unselectedLabelColor: AppColors.darkOnSurfaceVariant,
      indicator: UnderlineTabIndicator(
        borderSide: const BorderSide(color: AppColors.darkPrimary, width: 2),
        insets: const EdgeInsets.symmetric(horizontal: AppDimensions.spacing16),
      ),
    );
  }

  static BottomSheetThemeData get _lightBottomSheetTheme {
    return BottomSheetThemeData(
      backgroundColor: AppColors.surface,
      elevation: 8,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppDimensions.radius20),
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height * AppDimensions.bottomSheetMaxHeight,
        minHeight: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height * AppDimensions.bottomSheetMinHeight,
      ),
    );
  }

  static BottomSheetThemeData get _darkBottomSheetTheme {
    return BottomSheetThemeData(
      backgroundColor: AppColors.darkSurface,
      elevation: 8,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppDimensions.radius20),
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height * AppDimensions.bottomSheetMaxHeight,
        minHeight: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height * AppDimensions.bottomSheetMinHeight,
      ),
    );
  }

  static DialogTheme get _lightDialogTheme {
    return DialogTheme(
      backgroundColor: AppColors.surface,
      elevation: 24,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius20),
      ),
    );
  }

  static DialogTheme get _darkDialogTheme {
    return DialogTheme(
      backgroundColor: AppColors.darkSurface,
      elevation: 24,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius20),
      ),
    );
  }

  static SnackBarThemeData get _lightSnackBarTheme {
    return SnackBarThemeData(
      backgroundColor: AppColors.neutral800,
      actionTextColor: AppColors.primary,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
      ),
    );
  }

  static SnackBarThemeData get _darkSnackBarTheme {
    return SnackBarThemeData(
      backgroundColor: AppColors.neutral200,
      actionTextColor: AppColors.darkPrimary,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
      ),
    );
  }

  static TooltipThemeData get _lightTooltipTheme {
    return TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.neutral800,
        borderRadius: BorderRadius.circular(AppDimensions.radius8),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing12,
        vertical: AppDimensions.spacing8,
      ),
    );
  }

  static TooltipThemeData get _darkTooltipTheme {
    return TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.neutral200,
        borderRadius: BorderRadius.circular(AppDimensions.radius8),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing12,
        vertical: AppDimensions.spacing8,
      ),
    );
  }

  static PopupMenuThemeData get _lightPopupMenuTheme {
    return PopupMenuThemeData(
      color: AppColors.surface,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
      ),
    );
  }

  static PopupMenuThemeData get _darkPopupMenuTheme {
    return PopupMenuThemeData(
      color: AppColors.darkSurface,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radius12),
      ),
    );
  }

  static PageTransitionsTheme get _pageTransitionsTheme {
    return const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.fuchsia: FadeUpwardsPageTransitionsBuilder(),
      },
    );
  }
}
