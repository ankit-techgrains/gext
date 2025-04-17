import 'package:flutter/material.dart';
import 'package:getx/common/import/common_getx.dart';
import 'package:getx/common/import/common_import.dart';
import 'package:getx/common/import/common_tg_utils.dart';
import 'package:getx/manager/service_manger.dart';
import 'package:getx/request/login_request.dart';
import 'package:getx/response/login_response.dart';
import 'package:techgrains/com/techgrains/service/request/tg_post_request.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
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

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool validateForm(GlobalKey<FormState> formKey) {
    final isValid = formKey.currentState?.validate() ?? false;
    return isValid;
  }

  //
  callLoginApi() async {
    EasyLoading.show(status: 'loading...');
    try {
      TGPostRequest request = LoginRequest(username: emailController.text, password: passwordController.text, deviceId: "ed", firebaseToken: "fwf");
      await ServiceManager.getInstance().login(
        request: request,
        onSuccess: (response) => onSuccessLogin(response),
        onError: (error) {},
        callAPIAgain: () {
          return TGLog.d("callAPIAgain");
        },
      );
    } catch (e) {
      EasyLoading.dismiss();
      update();
      TGLog.d("callLoginApi catch: $e");
    }
  }

  onSuccessLogin(LoginResponse response) async {
    EasyLoading.dismiss();
    update();
    TGLog.d("_onSuccessLogin:");
  }

  _gotoUserInfoScreen() {
    AppFunction.goToAndReplace(Routes.USER);
  }
}
