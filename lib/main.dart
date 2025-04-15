import 'package:flutter/material.dart';
import 'package:getx/common/import/common_getx.dart';
import 'package:getx/common/import/common_import.dart';
import 'package:getx/common/import/routes_import.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(
    ScreenUtilInit(
      designSize: MediaQueryData.fromView(WidgetsBinding.instance.window).size,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          builder: EasyLoading.init(),
          theme: ThemeData(useMaterial3: false, primaryColor: Colors.white),
          title: "GETX DEMO",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      },
    ),
  );
}
