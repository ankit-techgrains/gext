import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx/common/common_elevated_button.dart';
import 'package:getx/common/custom_text_field.dart';
import 'package:techgrains/com/techgrains/view/tg_text.dart';
import 'package:techgrains/com/techgrains/view/tg_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView'), centerTitle: true),
      body: GetBuilder<HomeController>(
        builder: (logic) {
          return SingleChildScrollView(
            child: Form(
              key: logic.formKey,
              child: TGView.columnContainer(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                children: [
                  CustomTextField(controller: logic.emailController, labelText: 'Email', keyboardType: TextInputType.emailAddress, validator: (_) => logic.validateEmail()),
                  TGView.emptySizedBox(height: 10.h),
                  CustomTextField(controller: logic.passwordController, labelText: 'Password', keyboardType: TextInputType.text, validator: (_) => logic.validatePassword()),
                  TGView.emptySizedBox(height: 10.h),
                  CommonElevatedButton(
                    onPressed: () {
                      if (logic.validateForm(logic.formKey)) {
                        logic.callLoginApi();
                        // Call login logic
                      }
                    },
                    width: double.infinity,
                    child: TGText.labelSmall("Login", color: Colors.white),
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
