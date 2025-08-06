# Flutter MVVM Architecture Template 🚀

A robust and scalable Flutter template implementing the MVVM (Model-View-ViewModel) architecture pattern with Provider state management.

## 📋 Table of Contents
- [Features](#features)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Architecture Overview](#architecture-overview)
- [State Management](#state-management)
- [Network Layer](#network-layer)
- [Navigation](#navigation)
- [Error Handling](#error-handling)
- [Contributing](#contributing)

## ✨ Features
- 🏗️ MVVM Architecture Pattern
- 📦 Provider State Management
- 🌐 HTTP Client Setup with Error Handling
- 🧭 GetX Navigation Service
- 💾 Local Storage Service
- 🎨 Theme Management
- 📝 Logging Utility
- 🔒 Authentication Module Template
- 🏠 Home Module Template

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest version)
- Dart SDK (latest version)
- Android Studio / VS Code
- Git

### Installation

1. Clone this repository:
```bash
git clone https://github.com/vijaybheda/flutter-mvvm-architecture-template.git
```

2. Rename the package:
   - Navigate to the project directory and run the rename script with your desired package name.
   - The script will update the package name in all necessary files.
```bash

# Navigate to the project directory
cd flutter-mvvm-architecture-template

# Make the script executable
chmod +x rename_package.sh

# Run the rename script with your package name
./rename_package.sh com.example.myapp
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## 📁 Project Structure

```
lib/
├── core/
│   ├── config/
│   │   └── env.dart
│   ├── constants/
│   │   ├── api_endpoints.dart
│   │   ├── app_colors.dart
│   │   ├── app_strings.dart
│   │   └── constants.dart
│   ├── network/
│   │   ├── api_client.dart
│   │   ├── failure.dart
│   │   └── network_utils.dart
│   ├── services/
│   │   └── local_storage_service.dart
│   ├── theme/
│   │   └── theme.dart
│   └── utils/
│       ├── logger.dart
│       └── toast_message.dart
├── modules/
│   ├── auth/
│   │   ├── provider/
│   │   ├── model/
│   │   ├── repository/
│   │   └── screen/
│   └── home/
│       ├── provider/
│       ├── model/
│       ├── repository/
│       └── screen/
└── navigation/
    └── getx_navigation.dart
```

## 🏗️ Architecture Overview

### MVVM Pattern Implementation

#### 1. Model
- Data classes and business logic
- Located in `model/` directory
- Handles data serialization/deserialization

#### 2. View
- UI components and widgets
- Located in `screen/` directory
- No business logic, only UI rendering

#### 3. ViewModel (Provider)
- Business logic and state management
- Located in `provider/` directory
- Connects View with Model and Repository

#### 4. Repository
- Data source abstraction
- Located in `repository/` directory
- Handles API calls and data operations

## 📦 State Management

### Provider Implementation
```dart
class ExampleProvider extends ChangeNotifier {
  final IExampleRepository _repository;
  
  ExampleProvider(this._repository);
  
  // State variables
  bool _isLoading = false;
  String? _error;
  List<ExampleModel> _items = [];
  
  // Getters
  bool get isLoading => _isLoading;
  String? get error => _error;
  List<ExampleModel> get items => _items;
  
  // Methods
  Future<void> fetchData() async {
    _isLoading = true;
    notifyListeners();
    
    final result = await _repository.fetchData().run();
    
    result.match(
      (failure) => _error = failure.message,
      (data) => _items = data,
    );
    
    _isLoading = false;
    notifyListeners();
  }
}
```

## 🌐 Network Layer

### API Client Usage
```dart
final apiClient = ApiClient();

// GET Request
final response = await apiClient.get('/endpoint');

// POST Request
final response = await apiClient.post(
  '/endpoint',
  body: {'key': 'value'}
);
```

## 🧭 Navigation

### GetX Navigation Service
```dart
final navigation = GetxNavigation();

// Navigate to next page
navigation.next('/home');

// Navigate and remove previous
navigation.navigateToNextAndRemovePrevious('/login');

// Navigate and remove all previous
navigation.navigateToNextAndRemovePreviousAll('/dashboard');
```

## ❌ Error Handling

The template includes a robust error handling system:
- Network exceptions handling
- API error responses
- UI error states
- Error logging

## 🔄 Creating New Modules

To create a new feature module, follow this structure:

```
modules/
└── feature_name/
    ├── provider/
    │   └── feature_provider.dart
    ├── model/
    │   └── feature_model.dart
    ├── repository/
    │   └── feature_repository.dart
    └── screen/
        └── feature_screen.dart
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Flutter Team
- Provider Package
- GetX Package
- All contributors

---

Made with ❤️ by Vijay Bheda
