import 'package:get/get.dart';

import '../controller/animated_controller.dart';

class AnimatedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimatedController());
  }
}
