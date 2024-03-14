import 'package:get/get.dart';

class Dimensions {
  // Taking Device height and width
  // static double screenHeight = MediaQuery.of(context).size.height;
  static double screenHeight = Get.context!.height;
  static double screenwidth = Get.context!.width;

// dynamic height
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.75;
  static double height60 = screenHeight / 15.55;
  static double height70 = screenHeight / 8;
  static double height80 = screenHeight / 6;
  static double height90 = screenHeight / 5.5;

  // dynamic width
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width60 = screenHeight / 12.55;

// dynamic font
  static double font40 = screenHeight / 13;
  static double font32 = screenHeight / 18;
  static double font28 = screenHeight / 28;
  static double font27 = screenHeight / 30;
  static double font26 = screenHeight / 32.46;
  static double font20 = screenHeight / 39;
  static double font16 = screenHeight / 42;
  static double font14 = screenHeight / 52;
  static double font12 = screenHeight / 60;

  // icon size
  static double iconSize24 = screenHeight / 32.17;
  static double iconSize16 = screenHeight / 52.75;

  // dynamic radius
  static double radius5 = screenHeight / 100;
  static double radius15 = screenHeight / 56.27;

  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;
}
