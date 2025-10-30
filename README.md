# DreamForge

A Flutter application designed to help you turn your dreams into reality through structured goal-setting and daily progress tracking.

## Overview

DreamForge is your personal companion for achieving life goals. It transforms abstract dreams into concrete, actionable plans with measurable progress tracking and daily motivation.

## Key Features

### 🎯 Dream to Goal Conversion
- Formulate your dreams and break them down into achievable goals
- Set the nearest milestone for each dream
- Track progress from dream to reality

### 📋 Daily Quest System
- Create daily quests based on your current goals
- Earn experience points (XP) for completing daily tasks
- Visualize your progress toward goal completion

### ⚡ Key Quest Management
- Add important milestone quests that significantly impact your progress
- Track major achievements and breakthroughs

### 📝 Event Logging
- Log unexpected events that contribute to your goal achievement
- Capture serendipitous moments and their impact on your journey

### 🌅 Daily Reflection & Guidance
- Write evening journal entries to reflect on your day
- Receive morning guidance and motivation for the upcoming day
- Make necessary adjustments to your daily plan based on insights

### 🔄 Goal Progression
- Set new goals upon achieving current ones
- Maintain momentum in your personal development journey

### 📊 Progress Analytics
- View chronological timeline for each goal
- Analyze the volume of work required to achieve your objectives
- Track your growth and development over time

## Getting Started

This is a Flutter application. To run it:

1. Ensure you have Flutter installed
2. Clone the repository
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to start the application

## Run Instructions (with Drift + Riverpod + GoRouter)

Follow these steps for a clean setup across platforms:

1) Prerequisites
- Flutter SDK (stable channel)
- Xcode (for iOS/macOS) and/or Android Studio (for Android)
- Cocoapods for iOS: `sudo gem install cocoapods`

2) Install dependencies
```bash
flutter pub get
```

3) Generate Drift code
```bash
dart run build_runner build --delete-conflicting-outputs
```

4) Platform setup
- iOS/macOS:
  - From the project root: `cd ios && pod install && cd ..`
- Android: no extra steps typically required

5) Run the app
```bash
flutter run
```

Notes
- The app uses ProviderScope in `main.dart` and initializes Flutter bindings before runApp; no additional steps needed.
- If you change database tables, re-run build_runner.
- For hot-reload driven changes that modify generated code, use: `dart run build_runner watch -d`.

## Platform Support

- iOS
- Android
- Web
- macOS
- Windows
- Linux

## Technology Stack

- **Framework**: Flutter
- **Language**: Dart
- **Platform**: Cross-platform

## Open Source

DreamForge is an open-source project. We believe in transparency and community collaboration. Feel free to:

- Report bugs and issues
- Suggest new features
- Contribute code improvements
- Share your experience and feedback

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

The MIT License allows you to:
- Use the software commercially
- Modify and distribute the software
- Use the software privately
- Include the software in proprietary products

---

Transform your dreams into reality, one day at a time with DreamForge.