import 'package:flutter/material.dart';
import 'package:getx/app/modules/home/controllers/home_controller.dart';
import 'package:getx/common/component/common_elevated_button.dart';
import 'package:getx/common/component/custom_text_field.dart';
import 'package:getx/common/component/no_internet_widget.dart';
import 'package:getx/common/import/common_getx.dart';
import 'package:getx/common/import/common_import.dart';
import 'package:getx/common/import/common_tg_utils.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(title: const Text(LabelConstants.screenLogin), centerTitle: true),
      body: GetBuilder<HomeController>(
        builder: (logic) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: EdgeInsetType.s.w, vertical: EdgeInsetType.s.h),
            child: Form(
              key: logic.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NoInternetWidget(tryAgainTapEvent: () {}),
                  CustomTextField(
                    decoration: InputDecoration(
                      labelText: LabelConstants.labelEmail,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    ),
                    controller: logic.emailController,
                    labelText: LabelConstants.labelEmail,
                    keyboardType: TextInputType.emailAddress,

                    validator: (_) => AppValidator.email(logic.emailController.text),
                  ),
                  SizedBox(height: EdgeInsetType.xxxxs.h),
                  CustomTextField(
                    controller: logic.passwordController,
                    labelText: LabelConstants.labelPassword,
                    decoration: InputDecoration(
                      labelText: LabelConstants.labelPassword,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: (_) => AppValidator.password(logic.passwordController.text),
                  ),
                  SizedBox(height: SizeType.xxxxxxxxxxxs.h),
                  CommonElevatedButton(
                    onPressed: () {
                      if (logic.validateForm(logic.formKey)) {
                        logic.callLoginApi();
                      }
                    },
                    width: double.infinity,
                    child: TGText.labelSmall(LabelConstants.buttonLogin, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
