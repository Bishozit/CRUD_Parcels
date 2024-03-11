import 'package:get/get.dart';

import '../controllers/create_parcel_controller.dart';

class CreateParcelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateParcelController>(
      () => CreateParcelController(),
    );
  }
}
