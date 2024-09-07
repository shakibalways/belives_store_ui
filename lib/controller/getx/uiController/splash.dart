import 'dart:async';

import 'package:belives_store/views/pages/onboading/onboading_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  getSplashNavigate() {
    Timer(
      const Duration(seconds: 3),
      () => Get.offAll(
        () => const OnboardingPage(),
      ),
    );
  }

  @override
  void onInit() {
    getSplashNavigate();
    super.onInit();
  }
}
