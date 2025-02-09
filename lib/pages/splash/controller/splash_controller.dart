import 'package:get/get.dart';

import '../../animated/view/animated_page.dart';

class SplashController extends GetxController with StateMixin{
  @override
  void onInit() {
    super.onInit();
    toanimatePage();
  }

  toanimatePage() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(MyAnimatedBackground.route);
  }
}
