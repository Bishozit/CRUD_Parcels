import 'package:get/get.dart';

import '../controllers/add_element_controller.dart';

class AddElementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddElementController>(
      () => AddElementController(),
    );
  }
}
