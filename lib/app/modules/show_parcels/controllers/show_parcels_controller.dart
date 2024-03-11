import 'package:get/get.dart';

import '../../../data/remote/model/show_all_parcel_model.dart';
import '../../../data/remote/repository/show_all_parcel_repository.dart';

class ShowParcelsController extends GetxController {
  //TODO: Implement ShowParcelsController

  final isLoading = false.obs;
  List<ShowAllParcelModel> allParcelList = <ShowAllParcelModel>[].obs;



  @override
  void onInit() {
    super.onInit();
    getAllParcel();
  }


  Future getAllParcel() async{

    dynamic response = await GetAllParcel().getAllParcel();

    allParcelList = response;

    print("***** Show All Parcel Controller ***********${response.length}**************");

    //Get.toNamed(Routes.SHOW_PARCELS);
    isLoading(true);
  }

//   Future<void> getAllParcel() async {
//   try {
//     isLoading(true);
//     dynamic response = await GetAllParcel().getAllParcel();
//     if (response != null) {
//       allParcelList = response;
//       print("***** Show All Parcel Controller ***********${response.length}**************");
//     } else {
//       print("No parcel data received");
//     }
//   } catch (e) {
//     print("Error fetching parcel data: $e");
//   } finally {
//     isLoading(false);
//   }
// }



}
