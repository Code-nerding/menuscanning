# Restaurant QR Code Menu App

A **modern, interactive mobile app** that lets users scan a QR code to instantly access dynamic restaurant menus, place orders, customize dishes, and engage with loyalty programs — all designed with Flutter for a smooth cross-platform (iOS & Android) experience.

---

## Features

- **Fast QR code scanning** to access real-time restaurant menus.
- **Visually rich menus** with high-quality images, videos, and detailed dish info.
- **Interactive filtering** by dietary preferences (vegan, gluten-free, allergens).
- **In-app ordering** with customizations and secure payment integration.
- **Loyalty and rewards** programs to boost customer engagement.
- **Multi-language and currency** support.
- **Offline menu access** with downloadable PDF menus.
- **Customer reviews and feedback** with real-time restaurant responses.
- Push notifications for offers, new dishes, and events.

---

## Technologies & Packages

### Main Framework

- [Flutter](https://flutter.dev/) – Cross-platform mobile app development.

### Essential Flutter Packages

- **qr_code_scanner** – Native QR code scanning with camera integration.
- **provider** – State management for app-wide reactive UI.
- **http / dio** – For REST API communication with backend services.
- **flutter_localizations** – Localization for multi-language support.
- **flutter_secure_storage** – Secure storage for sensitive data (e.g., payment tokens).
- **firebase_messaging** – Push notifications via Firebase Cloud Messaging.
- **cached_network_image** – Efficient image loading and caching.
- **video_player** – Display dish videos within menus.
- **url_launcher** – Open external URLs, e.g., for payment gateways.
- **pdf** – Generate or display downloadable PDF menus.
- **intl** – Internationalization, including date/time and currency formatting.
- **fluttertoast** – Friendly user notifications and messages.
- **shared_preferences** – Persist small user preferences locally.

---

## Suggested Project Structure

```bash
     /lib
     /src
     /core # Core utilities, constants, and theme data
     /models # Data models (Dish, Menu, User, Order,   Review)
     /services # API clients, QR code handling, payment,    notifications
     /providers # State management classes (Provider or     Riverpod)
     /screens # App screens (ScanScreen, MenuScreen,   OrderScreen, ProfileScreen)
     /widgets # Reusable UI components (DishCard,      FilterChips, ReviewsList)
     /localization # Localization files and support
     /utils # Helper functions (formatting, validators)
     main.dart # App entry point
     /assets
     /images # Menu photos, icons, logos
     /videos # Dish videos
     /locales # Translation JSON or ARB files
```

---

## Getting Started

1. **Clone the repository**

```bash
git clone https://github.com/Code-nerding/menuscanning.git
cd menuscannig
```

2. **Install dependencies**

```bash
     flutter pub get
````

3. **Set up backend API endpoints and Firebase**

- Configure `.env` or equivalent for API URLs.
- Setup Firebase project for push notifications.

4. **Run the app**

```bash
     flutter run
```

---

## Future Enhancements

- AI-powered dish recommendations based on user preferences.
- Augmented reality (AR) preview of dishes.
- Integration with popular payment gateways and delivery platforms.
- Advanced analytics dashboard for restaurants.
- Real-time chat support with restaurant staff.

---

## License

This project is licensed under the MIT License.

---

Created with ❤️ and Flutter 🚀  
For more information, visit [repo-link](https://github.com/Code-nerding/menuscanning.git)
