import 'package:get/get.dart';

/// Navigation service using GetX for route management.
/// This class provides wrapper methods around GetX navigation to maintain
/// consistent navigation behavior throughout the app.
class GetxNavigation {
  /// Navigates to the next page while keeping the current page in history
  ///
  /// Parameters:
  /// - [routeName] - The named route to navigate to
  /// - [arguments] - Optional arguments to pass to the next page
  Future<void> next(String routeName, {dynamic arguments}) async {
    Get.toNamed(routeName, arguments: arguments);
  }

  /// Navigates back to the previous page
  ///
  /// This method pops the current route from the navigation stack
  void goBack() {
    Get.back();
  }

  /// Navigates to the next page and removes the current page from history
  ///
  /// Parameters:
  /// - [routeName] - The named route to navigate to
  /// - [arguments] - Optional arguments to pass to the next page
  ///
  /// This is useful when you don't want the user to navigate back to the current page
  Future<void> navigateToNextAndRemovePrevious(String routeName,
      {dynamic arguments}) async {
    Get.offNamed(routeName, arguments: arguments);
  }

  /// Navigates to the next page and removes all previous pages from history
  ///
  /// Parameters:
  /// - [routeName] - The named route to navigate to
  /// - [arguments] - Optional arguments to pass to the next page
  ///
  /// This is useful for scenarios like logging out where you want to clear the entire navigation stack
  Future<void> navigateToNextAndRemovePreviousAll(String routeName,
      {dynamic arguments}) async {
    Get.offAllNamed(routeName, arguments: arguments);
  }
}
