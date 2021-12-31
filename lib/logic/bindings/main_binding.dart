import 'package:get/instance_manager.dart';
import 'package:udemy_shop_app/logic/controllers/main_controller.dart';
import 'package:udemy_shop_app/logic/controllers/payment_controller.dart';
import 'package:udemy_shop_app/logic/controllers/settings_controller.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingController());
    Get.put(PayMentController(), permanent: true);
  }
}
