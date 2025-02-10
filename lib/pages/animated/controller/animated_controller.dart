import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:get/get.dart';

class AnimatedController extends GetxController {
  final Random random = Random();

  var buttonX = 800.0.obs;
  var buttonY = 493.0.obs;
  var yes = true.obs;
  var no = false.obs;
  RxString text = 'Please say yes'.obs;
  RxString requestImage = 'assets/req_1.gif'.obs;
  
  late ConfettiController confettiController;
  late ConfettiController controllerCenterRight;
  late ConfettiController controllerCenterLeft;

  final List<String> textOptions = [
    'Are you sure?',
    'Are you really, really sure?',
    'I will be very sad 😢',
    'I will be very very very very sad.',
    'Why won’t you say yes? 🥺',
    'Think again... 🤔',
    'It’s not too late! ❤️',
    'Say yes, please! 😍'
  ];

  final List<String> imageOptions = [
    'assets/request.gif',
    'assets/req_2.gif',
    'assets/pull.gif',
    'assets/sad_face.gif',
    'assets/crying.gif'
  ];

  @override
  void onInit() {
    confettiController = ConfettiController(duration: const Duration(seconds: 10));
    controllerCenterRight = ConfettiController(duration: const Duration(seconds: 10));
    controllerCenterLeft = ConfettiController(duration: const Duration(seconds: 10));
    super.onInit();
  }

  @override
  void onClose() {
    confettiController.dispose();
    super.onClose();
  }

  void moveButton() {
    final screenWidth = Get.width;
    final screenHeight = Get.height;
    buttonX.value = random.nextDouble() * (screenWidth - 100);
    buttonY.value = random.nextDouble() * (screenHeight - 100);
    text.value = textOptions[random.nextInt(textOptions.length)];
    requestImage.value = imageOptions[random.nextInt(imageOptions.length)];
  }

  void acceptValentine() {
    yes.value = false;
    no.value = false;
    controllerCenterLeft.play();
    controllerCenterRight.play();
    confettiController.play();
  }
}
