import 'package:get/get.dart';

import '../controllers/show_parcels_controller.dart';

class ShowParcelsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowParcelsController>(
      () => ShowParcelsController(),
    );
  }
}
