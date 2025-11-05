# token_manage_apk

A new Flutter project.



```text
├── core
│   ├── api
│   │   ├── api_controller.dart
│   │   └── api_endpoints.dart
│   ├── app
│   │   ├── app.dart
│   │   ├── app_env.dart
│   │   ├── app_state.dart
│   │   ├── app_state_notifier.dart
│   │   ├── dev.dart
│   │   ├── prod.dart
│   │   └── stage.dart
│   ├── constants
│   │   ├── app_icons.dart
│   │   └── locales.dart
│   ├── data
│   │   └── dummy_data.dart
│   ├── router
│   │   ├── app_router.dart
│   │   └── app_routes.dart
│   ├── theme
│   │   ├── app_theme.dart
│   │   ├── app_typography.dart
│   │   ├── dark_theme.dart
│   │   └── light_theme.dart
│   └── utils
│       ├── dynamic_cookie_manager.dart
│       ├── isolate
│       │   └── heavy_task_isolate.dart
│       ├── logger.dart
│       └── responsive
│           ├── responsive_breakpoints.dart
│           ├── responsive_header.dart
│           └── responsive_utils.dart
├── features
│   ├── homeScreen
│   │   ├── data
│   │   │   ├── auth_header.dart
│   │   │   ├── home_screen_controller.dart
│   │   │   └── home_screen_data.dart
│   │   ├── home_screen_provider.dart
│   │   └── presentation
│   │       ├── home_main_screen.dart
│   │       └── widget
│   │           ├── home_carousel.dart
│   │           └── search_filter_row.dart
│   ├── login
│   │   ├── controllers
│   │   │   └── login.dart
│   │   ├── login_provider.dart
│   │   └── presentation
│   │       └── login.dart
│   ├── mainBottomNave
│   │   ├── main_bottom_nav_provider.dart
│   │   └── presentation
│   │       └── main_bottom_nav_screen.dart
│   ├── personalMainScreen
│   │   ├── personal_main_screen_provider.dart
│   │   └── presentation
│   │       └── personal_main_screen.dart
│   └── settings
│       ├── presentation
│       └── settings_provider.dart
├── l10n
│   └── app_en.arb
├── main.dart
└── shared
    ├── ui
    │   ├── button
    │   │   ├── app_button.dart
    │   │   └── app_text_button.dart
    │   ├── card
    │   │   └── app_card.dart
    │   ├── header
    │   │   ├── bubble_header.dart
    │   │   └── profile_header.dart
    │   ├── icon
    │   │   └── app_icon.dart
    │   ├── image
    │   │   └── app_image.dart
    │   ├── ss.tsx
    │   ├── text
    │   │   ├── app_text.dart
    │   │   ├── expandable_text.dart
    │   │   └── text_type.dart
    │   └── textField
    │       ├── app_text_field.dart
    │       └── search_app_text_field.dart
    └── widgets
        ├── product
        │   ├── product_card_details.dart
        │   ├── product_card_image.dart
        │   └── product_list.dart
        └── trash.tsx

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
