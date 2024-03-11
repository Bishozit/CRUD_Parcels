import 'package:get/get.dart';

import '../controllers/update_details_controller.dart';

class UpdateDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateDetailsController>(
      () => UpdateDetailsController(),
    );
  }
}
