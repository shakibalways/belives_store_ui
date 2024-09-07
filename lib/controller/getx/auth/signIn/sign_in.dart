import 'package:belives_store/views/pages/bottomNavBar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Text controllers for email and password input fields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Observables for loading state and password visibility
  RxBool isLoading = false.obs;
  RxBool isVisibility = true.obs;

  // Validate email format
  String? emailValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Enter a valid email';
    }
    return null; // Return null if valid
  }

  // Validate password length
  String? passwordValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null; // Return null if valid
  }

  Future<void> getSubmit() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      await Future.delayed(const Duration(seconds: 1));
      Get.offAll(const BottomNavBarPage());
      Get.snackbar('Success', 'Logged in successfully');
      isLoading.value = false;
    }
  }

  void toggleVisibility() {
    isVisibility.value = !isVisibility.value;
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
