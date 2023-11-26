import 'package:default_app/config/routes/app_routes.dart';
import 'package:default_app/core/features/splash/controllers/splash_controller.dart';
import 'package:default_app/core/features/splash/views/splash_page.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static List<GetPage> getPages(){
     return [
      /// Modul splash
      GetPage(
        name: AppRoutes.splash,
        page: () => const  SplashPage(),
        binding: BindingsBuilder(() {
          Get.put(SplashController());
        }),
      ),
    ];
  }

}
