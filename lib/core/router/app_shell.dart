import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  final Widget child;
  const AppShell({super.key, required this.child});

  static final List<_NavItem> _items = [
    _NavItem(label: 'Dashboard', icon: Icons.dashboard_outlined, selectedIcon: Icons.dashboard, location: '/'),
    _NavItem(label: 'Goal', icon: Icons.flag_outlined, selectedIcon: Icons.flag, location: '/goal/1'),
    _NavItem(label: 'Quest', icon: Icons.task_alt_outlined, selectedIcon: Icons.task_alt, location: '/quest/42'),
    _NavItem(label: 'Journal', icon: Icons.menu_book_outlined, selectedIcon: Icons.menu_book, location: '/journal'),
    _NavItem(label: 'Dream', icon: Icons.star_border, selectedIcon: Icons.star, location: '/dream/7'),
  ];

  int _indexForLocation(String location) {
    for (int i = 0; i < _items.length; i++) {
      final item = _items[i];
      if (location == item.location) return i;
      if (item.location != '/' && location.startsWith(item.location.split('/:').first)) return i;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final selectedIndex = _indexForLocation(location);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) => context.go(_items[index].location),
        destinations: _items
            .map(
              (e) => NavigationDestination(
                icon: Icon(e.icon, color: colorScheme.onSurfaceVariant),
                selectedIcon: Icon(e.selectedIcon),
                label: e.label,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _NavItem {
  final String label;
  final IconData icon;
  final IconData selectedIcon;
  final String location;

  const _NavItem({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    required this.location,
  });
}
