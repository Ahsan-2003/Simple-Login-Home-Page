Here's a concise README.md for your Login & Home Screen App:

---

# 🔐 Login & Home Screen App

A simple Flutter app with login authentication, form validation, and home screen navigation.

## ✨ Features

### Login Screen
- 📧 Email validation (must contain @ and .)
- 🔒 Password validation (minimum 6 characters)
- 👁️ Password hide/unhide toggle
- ✅ Form validation with error messages
- 🚀 Navigate to Home Screen on success

### Home Screen
- 👋 Welcome message with username
- 📧 Display email address
- 🔑 Display password (masked with •)
- 🚪 Logout button to return to login

## 🚀 Quick Start

```bash
# Clone repository
git clone https://github.com/yourusername/login-home-app.git

# Install dependencies
flutter pub get

# Run app
flutter run
```

## 📁 Project Structure

```
lib/
├── main.dart
├── login_screen.dart
└── home_screen.dart
```

## 📱 Screens

1. **Login** - Email/password validation with password toggle
2. **Home** - Welcome message with user credentials display

## 🔐 Form Validation

- **Email:** Required, must contain @ and .
- **Password:** Required, minimum 6 characters
- Real-time error messages on submission

## 🎯 Key Concepts

- `StatefulWidget` for dynamic UI
- `Form` & `GlobalKey` for validation
- `TextEditingController` for input handling
- `Navigator` for screen navigation
- `setState()` for UI updates

---

**Made with ❤️ using Flutter**

---

## 🔄 Data Flow

```
User Input → Form Validation → Success → Navigate to Home → Display Credentials
              ↓ Error
         Show Error Messages
```
