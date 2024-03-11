import 'package:get/get.dart';

import '../modules/add_element/bindings/add_element_binding.dart';
import '../modules/add_element/views/add_element_view.dart';
import '../modules/create_parcel/bindings/create_parcel_binding.dart';
import '../modules/create_parcel/views/create_parcel_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/project_details/bindings/project_details_binding.dart';
import '../modules/project_details/views/project_details_view.dart';
import '../modules/show_parcels/bindings/show_parcels_binding.dart';
import '../modules/show_parcels/views/show_parcels_view.dart';
import '../modules/update_details/bindings/update_details_binding.dart';
import '../modules/update_details/views/update_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.PROJECT_DETAILS,
      page: () => ProjectDetailsView(),
      binding: ProjectDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ELEMENT,
      page: () => const AddElementView(),
      binding: AddElementBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_DETAILS,
      page: () => UpdateDetailsView(),
      binding: UpdateDetailsBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SHOW_PARCELS,
      page: () => const ShowParcelsView(),
      binding: ShowParcelsBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_PARCEL,
      page: () => const CreateParcelView(),
      binding: CreateParcelBinding(),
    ),
  ];
}
