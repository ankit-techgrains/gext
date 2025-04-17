import 'package:getx/common/import/common_getx.dart';
import 'package:getx/common/import/common_import.dart';
import 'package:getx/common/import/common_tg_utils.dart';
import 'package:techgrains/com/techgrains/util/tg_flavor.dart';

class SplashController extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();

    _init();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void _init() {
    goToHomeScreen();
    _tgInit();
  }

  Future<void> _tgInit() async {
    await TGService.init(baseUrl: TGFlavor.baseUrl(), headers: AppFunction.defaultHeaders());
  }

  void goToHomeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      // work  same  as pushReplacement
      AppFunction.goToAndReplace(Routes.HOME);
    });
  }
}
