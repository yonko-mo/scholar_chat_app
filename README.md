# Scholar Chat App

Scholar Chat is a mobile chat application built with **Flutter** and integrated with **Firebase** for backend services. It provides a secure user authentication system including sign-up and sign-in functionalities, followed by a real-time messaging interface.

## Demo



## Features

- **Firebase Authentication**: Full integration with Firebase Auth for email registration and login.
- **Real-Time Group Chat**: Seamless real-time message stream powered by **Cloud Firestore**.
- **Form Validation**: Clean validation patterns verifying email formatting (regex) and password strength (length requirements).
- **Password Obscure Toggle**: Interactive show/hide trailing icon inside the password field to secure user input visibility.
- **Dynamic Chat UI**: Distinct bubble styles for sender ([SenderChatBubble](lib/widgets/sender_chat_bubble.dart)) and receiver ([ReceiverChatBubble](lib/widgets/receiver_chat_bubble.dart)).
- **Auto-Scroll Behavior**: Automatically scrolls to the newest message upon submission.
- **Code Refactoring & Reusability**:
  - Centralized [Validators](lib/helper/validators.dart) logic for clean form validation.
  - Reusable UI widgets and layout views.
- **Loading HUD Overlay**: Responsive progress overlay via `modal_progress_hud_nsn` to indicate asynchronous network requests.
- **User Feedback**: Comprehensive error handling and real-time status notifications via Snackbars.

## File Structure

```text
lib/
├── helper/
│   ├── show_snack_bar.dart         # Utility for showing SnackBar messages
│   └── validators.dart             # Email and password validation logic
├── models/
│   └── message_model.dart          # Chat message data model
├── widgets/
│   ├── custom_logo.dart            # Centralized logo and header UI widget
│   ├── custom_elevated_button.dart
│   ├── custom_text_form_field.dart # Form field supporting password toggling and validation
│   ├── sender_chat_bubble.dart     # Chat bubble for the sender
│   └── receiver_chat_bubble.dart   # Chat bubble for the receiver
├── views/
│   ├── chat_view.dart              # Real-time chat room view
│   ├── login_view.dart             # Sign-in page
│   └── signup_view.dart            # Sign-up page
├── constants.dart                  # App-wide color & styling configuration constants
├── firebase_options.dart           # Auto-generated Firebase configurations
└── main.dart                       # Application entry point
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
