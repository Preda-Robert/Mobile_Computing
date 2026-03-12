This workspace contains a minimal Flutter UI scaffold for an e-learning app with:

- Login screen
- Register screen
- Home screen with a navigation drawer (My Account, Edit Profile, Logout)

How to use:

1. Create a Flutter project (if you don't have one):

```bash
flutter create my_app
```

2. Copy the `lib/` folder and `pubspec.yaml` from this workspace into your Flutter project (overwrite existing files as needed).

3. From the project root run:

```bash
flutter pub get
flutter run
```

Notes:
- UI is local-only for now; you can wire Firebase auth later in the `login`/`register` flows.
- Files added: `lib/main.dart`, `lib/screens/*`, `lib/widgets/app_drawer.dart`.
