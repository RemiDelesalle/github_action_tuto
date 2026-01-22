# github_action_tuto

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
 
## CI / CD and Tests

This repository contains a small Flutter app intended for practicing CI/CD pipelines and unit/widget tests.

Run locally:

```bash
flutter pub get
flutter run
```

Run tests:

```bash
flutter test
```

Useful for CI:

- Ensure `flutter` is installed on the CI runner
- Run `flutter pub get` then `flutter test`
- Optionally run `flutter analyze` or `flutter format --set-exit-if-changed`
