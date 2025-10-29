import 'package:flutter/material.dart';
import '../theme/theme.dart';
import '../constants/constants.dart';

class ThemeDemoWidget extends StatelessWidget {
  const ThemeDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = ThemeProvider.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Theme Demo', style: textTheme.displayMedium),
            const SizedBox(height: AppDimensions.spacing16),
            
            _buildColorShowcase(context),
            const SizedBox(height: AppDimensions.spacing16),
            
            _buildTypographyShowcase(textTheme),
            const SizedBox(height: AppDimensions.spacing16),
            
            _buildButtonShowcase(context),
            const SizedBox(height: AppDimensions.spacing16),
            
            _buildThemeToggle(context, themeManager),
          ],
        ),
      ),
    );
  }

  Widget _buildColorShowcase(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Colors',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: AppDimensions.spacing8),
        Wrap(
          spacing: AppDimensions.spacing8,
          runSpacing: AppDimensions.spacing8,
          children: [
            _ColorChip(
              color: Theme.of(context).colorScheme.primary,
              label: 'Primary',
            ),
            _ColorChip(
              color: Theme.of(context).colorScheme.secondary,
              label: 'Secondary',
            ),
            _ColorChip(
              color: Theme.of(context).colorScheme.tertiary,
              label: 'Tertiary',
            ),
            _ColorChip(
              color: Theme.of(context).colorScheme.error,
              label: 'Error',
            ),
            _ColorChip(
              color: Theme.of(context).colorScheme.surface,
              label: 'Surface',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTypographyShowcase(TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Typography', style: textTheme.headlineMedium),
        const SizedBox(height: AppDimensions.spacing8),
        Text('Header 1', style: textTheme.displayMedium),
        Text('Header 2', style: textTheme.headlineLarge),
        Text('Title', style: textTheme.titleLarge),
        Text('Subtitle', style: textTheme.titleMedium),
        Text('Body', style: textTheme.bodyMedium),
        Text('Caption', style: textTheme.bodySmall),
      ],
    );
  }

  Widget _buildButtonShowcase(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Buttons',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: AppDimensions.spacing8),
        Wrap(
          spacing: AppDimensions.spacing8,
          runSpacing: AppDimensions.spacing8,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildThemeToggle(BuildContext context, ThemeManager themeManager) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Theme Control',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: AppDimensions.spacing8),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => themeManager.setLightTheme(),
                icon: const Icon(Icons.light_mode),
                label: const Text('Light'),
              ),
            ),
            const SizedBox(width: AppDimensions.spacing8),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => themeManager.setDarkTheme(),
                icon: const Icon(Icons.dark_mode),
                label: const Text('Dark'),
              ),
            ),
            const SizedBox(width: AppDimensions.spacing8),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => themeManager.setSystemTheme(),
                icon: const Icon(Icons.settings_system_daydream),
                label: const Text('System'),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppDimensions.spacing8),
        Text(
          'Current: ${themeManager.getThemeModeDisplayName()}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _ColorChip extends StatelessWidget {
  final Color color;
  final String label;

  const _ColorChip({
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing8,
        vertical: AppDimensions.spacing4,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppDimensions.radius8),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline,
          width: 1,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
