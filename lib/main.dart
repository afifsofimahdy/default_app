import 'package:default_app/config/pages/app_pages.dart';
import 'package:default_app/config/routes/app_routes.dart';
import 'package:default_app/constant/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   @override
  void initState() {
    ScreenUtil.init(
      context,
      designSize: AppConst.designSize,
      minTextAdapt: true,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppConst.designSize,
      builder: (context, child) => GetMaterialApp(
        title: AppConst.appName,
        initialRoute: AppRoutes.splash,
        getPages: AppPages.getPages(),
        debugShowCheckedModeBanner: false,
        builder: (context, child) => MediaQuery(
           data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        ),
      ),
    );
  }
}