# Real Estate App

A Flutter real estate landing page/dashboard with a responsive layout, project showcase, testimonials, and a side information panel.

## Overview

This project is a UI-focused Flutter application for presenting real estate content in a modern dashboard-style layout.

Main sections include:

- Hero banner
- Stats overview
- Projects grid
- Recommendations/testimonials
- Side menu with contact info, goals, and social links

## Tech Stack

- Flutter
- Dart
- `flutter_svg`

## Project Structure

The app code inside `lib` is organized by responsibility:

```text
lib/
  core/
    constants/
    layout/
    theme/
  features/
    home/
      data/
        models/
      presentation/
        screens/
        widgets/
```

Important paths:

- `lib/main.dart`
- `lib/core/theme/app_theme.dart`
- `lib/core/layout/responsive.dart`
- `lib/features/home/presentation/screens/home_screen.dart`
- `lib/features/home/presentation/widgets/`

## Getting Started

### Requirements

- Flutter SDK
- Dart SDK
- A device, emulator, or browser target enabled for Flutter

### Install dependencies

```bash
flutter pub get
```

### Run the app

```bash
flutter run
```

## Assets

The project uses local assets from:

- `assets/images/`
- `assets/icons/`

## Notes

- The app currently focuses on UI and layout structure.
- Sample content is stored locally in Dart model files under `lib/features/home/data/models/`.
- The codebase was reorganized to use clearer naming and a more maintainable feature-based structure.
