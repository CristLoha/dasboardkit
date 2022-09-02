import 'package:get/get.dart';

import 'package:dasboardkit/app/modules/dasboard/bindings/dasboard_binding.dart';
import 'package:dasboardkit/app/modules/dasboard/views/dasboard_view.dart';
import 'package:dasboardkit/app/modules/home/bindings/home_binding.dart';
import 'package:dasboardkit/app/modules/home/views/home_view.dart';
import 'package:dasboardkit/app/modules/profile/bindings/profile_binding.dart';
import 'package:dasboardkit/app/modules/profile/views/profile_view.dart';
import 'package:dasboardkit/app/modules/rapports/bindings/rapports_binding.dart';
import 'package:dasboardkit/app/modules/rapports/views/rapports_view.dart';
import 'package:dasboardkit/app/modules/settings/bindings/settings_binding.dart';
import 'package:dasboardkit/app/modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASBOARD,
      page: () => DasboardView(),
      binding: DasboardBinding(),
    ),
    GetPage(
      name: _Paths.RAPPORTS,
      page: () => RapportsView(),
      binding: RapportsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
