# Online Bike Shopping App

A cross-platform Flutter application for browsing and purchasing bikes online. This repository contains the full Flutter project (Android, iOS, web, desktop) used as the basis for a simple e-commerce experience focused on bikes.
<img width="728" height="363" alt="cover" src="https://github.com/user-attachments/assets/b8a996ad-dd44-433a-91e9-6f2a2182da2a" />
<img width="285" height="588" alt="bike4" src="https://github.com/user-attachments/assets/720ccb27-c713-4d22-bca1-d41979c3d246" />
<img width="277" height="582" alt="bike3" src="https://github.com/user-attachments/assets/c0e2a46d-0505-4ac8-863e-da09b21ab341" />
<img width="275" height="591" alt="bike2" src="https://github.com/user-attachments/assets/3c8410d8-9ccb-4d4d-81a3-f17dc5545233" />
<img width="276" height="600" alt="bike1" src="https://github.com/user-attachments/assets/6dacdd57-6023-4b09-b558-7c7d1805e904" />


## Key Features

- Browse bikes by category and featured collections
- Product detail pages with images, specs, and reviews
- Search and filtering support
- Shopping bag (cart) with quantity and pricing
- Checkout flow scaffold (payments not integrated by default)
- Responsive UI for mobile and web
- Modular feature structure for easy extension

## Demo

Screenshots and demo GIFs go here — add images to the `assets/` folder and reference them below.

## Getting Started

### Prerequisites

- Flutter SDK (stable channel). Install from https://flutter.dev
- For Android: Android Studio + SDK or command-line tools
- For iOS: Xcode (macOS only)

Verify your setup with:

```bash
flutter --version
flutter doctor
```

### Install

Clone the repo and fetch dependencies:

```bash
git clone <https://github.com/MedhatSaleh123/Online-Bike-Shopping-App>
cd online_bike_shopping_app
flutter pub get
```

### Run the app

Run on an Android emulator or connected device:

```bash
flutter run
```

Run for web:

```bash
flutter run -d chrome
```

Build (release) for Android:

```bash
flutter build apk --release
```

## Project Structure

- `lib/` — main Dart code
  - `main.dart` — app entry point
  - `core/` — app-wide config, constants, utilities
  - `features/` — feature modules (BikeDetails, Discover, ShoppingBag, etc.)
- `assets/` — images, fonts, and other static assets
- `android/`, `ios/`, `web/` — platform-specific files

This app follows a feature-driven structure to keep related screens and logic together and make it easy to scale or extract features later.

## Architecture & State

The project uses a modular feature structure. You can choose your preferred state management approach (Provider, Riverpod, BLoC, GetX); the code is organized to make swapping implementations straightforward.

## Customization

- Update strings and constants in `lib/core/constants/`
- Add images to `assets/` and declare them in `pubspec.yaml`
- Add new features under `lib/features/`

## Testing

Run unit and widget tests with:

```bash
flutter test
```

## Contributing

Contributions are welcome. Open an issue to discuss changes or submit a pull request with a clear description of the change and why it helps the project.

## License

This project is provided "as-is" — add a license file if you intend to publish or share it publicly (for example, MIT).

## Contact

If you need help or want to collaborate, open an issue or reach out to the repository owner.
