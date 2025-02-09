import 'package:get/get.dart';
import '../pages/animated/binding/animated_binding.dart';
import '../pages/animated/view/animated_page.dart';
import '../pages/splash/binding/splash_binding.dart';
import '../pages/splash/view/splash_page.dart';

List<GetPage> getpages = [
  GetPage(
    name: Splash.route,
    page: () => const Splash(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: MyAnimatedBackground.route,
    page: () => const MyAnimatedBackground(),
    binding: AnimatedBinding(),
  ),
];
