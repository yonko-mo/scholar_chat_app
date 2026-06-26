# Scholar Chat App

Scholar Chat is a mobile chat application built with **Flutter** and integrated with **Firebase** for backend services. It provides a secure user authentication system including sign-up and sign-in functionalities with a premium, responsive UI.

## Features

- **Firebase Authentication**: Full integration with Firebase Auth for email registration and login.
- **Form Validation**: Clean validation patterns verifying email formatting (regex) and password strength (length requirements).
- **Password Obscure Toggle**: Interactive show/hide trailing icon inside the password field to secure user input visibility.
- **Code Refactoring & Reusability**:
  - Centralized [Validators](lib/helper/validators.dart) logic for clean form validation.
  - Reusable UI elements like [CustomTextFormField](lib/widgets/custom_text_form_field.dart) and [CustomLogo](lib/widgets/custom_logo.dart).
- **Loading HUD Overlay**: Responsive progress overlay via `modal_progress_hud_nsn` to indicate asynchronous network requests.
- **User Feedback**: Comprehensive error handling and real-time status notifications via Snackbars.

## File Structure

```text
lib/
├── helper/
│   ├── show_snack_bar.dart   # Utility for showing SnackBar messages
│   └── validators.dart       # Email and password validation logic
├── widgets/
│   ├── custom_logo.dart      # Centralized logo and header UI widget
│   ├── custom_elevated_button.dart
│   └── custom_text_form_field.dart  # Form field supporting password toggling and validation
├── views/
│   ├── login_view.dart       # Sign-in page
│   └── signup_view.dart      # Sign-up page
├── constants.dart            # App-wide color & styling configuration constants
├── firebase_options.dart     # Auto-generated Firebase configurations
└── main.dart                 # Application entry point
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.
- [Firebase CLI](https://firebase.google.com/docs/cli) configured.

### Setup and Running

1. Clone this repository to your local machine.
2. Install packages:
   ```bash
   flutter pub get
   ```
3. Run the application:
   ```bash
   flutter run
   ```
