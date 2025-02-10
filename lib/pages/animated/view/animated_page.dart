import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/animated_controller.dart';

class MyAnimatedBackground extends GetView<AnimatedController> {
  static const route = '/happy_valentine';

  const MyAnimatedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Obx(
              () => controller.yes.value
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(
                          () => Text(
                            controller.text.value,
                            style: const TextStyle(
                                fontFamily: 'Oswald',
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Image.asset(controller.requestImage.value,
                            width: 200, height: 200),
                        Text(
                          'Will you be my Valentine?',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: controller.acceptValentine,
                              child: const Text(
                                'Yes',
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            MouseRegion(
                              onEnter: (_) {
                                controller.no.value = true;
                              },
                              child: Visibility(
                                visible: !controller.no.value,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: controller.acceptValentine,
                                  child: const Text(
                                    'No',
                                    style: TextStyle(
                                      fontFamily: 'Oswald',
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/kiss.gif', width: 200, height: 200),
                        const Text(
                          'Ok Yay!!!!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
          Obx(
            () => Positioned(
              left: controller.buttonX.value,
              top: controller.buttonY.value,
              child: Visibility(
                visible: controller.no.value,
                child: MouseRegion(
                  onEnter: (_) => controller.moveButton(),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: controller.moveButton,
                    child: const Text(
                      'No',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: controller.controllerCenterRight,
              blastDirection: 0,
              particleDrag: 0.05,
              emissionFrequency: 0.02,
              numberOfParticles: 20,
              gravity: 0.05,
              shouldLoop: false,
              strokeWidth: 1,
              strokeColor: Colors.transparent,
              minimumSize: const Size(5, 5),
              maximumSize: const Size(20, 20),
              colors: [
                Get.theme.colorScheme.primary,
                Get.theme.colorScheme.secondary,
                Get.theme.colorScheme.secondaryContainer,
                Get.theme.colorScheme.primaryContainer,
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: ConfettiWidget(
              confettiController: controller.controllerCenterRight,
              blastDirection: 0,
              particleDrag: 0.05,
              emissionFrequency: 0.02,
              numberOfParticles: 20,
              gravity: 0.05,
              shouldLoop: false,
              strokeWidth: 1,
              strokeColor: Colors.transparent,
              minimumSize: const Size(5, 5),
              maximumSize: const Size(20, 20),
              colors: [
                Get.theme.colorScheme.primary,
                Get.theme.colorScheme.secondary,
                Get.theme.colorScheme.secondaryContainer,
                Get.theme.colorScheme.primaryContainer,
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: ConfettiWidget(
              confettiController: controller.controllerCenterLeft,
              blastDirection: pi,
              emissionFrequency: 0.2,
              minimumSize: const Size(5, 5),
              maximumSize: const Size(20, 20),
              numberOfParticles: 1,
              gravity: 0.1,
              strokeColor: Colors.transparent,
              colors: [
                Get.theme.colorScheme.primary,
                Get.theme.colorScheme.secondary,
                Get.theme.colorScheme.secondaryContainer,
                Get.theme.colorScheme.primaryContainer,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
