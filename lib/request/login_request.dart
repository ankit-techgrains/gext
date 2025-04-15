import 'dart:convert';

import 'package:getx/constant/url.dart';
import 'package:techgrains/com/techgrains/service/request/tg_post_request.dart';

class LoginRequest extends TGPostRequest {
  String? username;
  String? password;
  String? code;
  String? deviceId;
  String? firebaseToken;

  LoginRequest({required this.username, required this.password, this.code, this.deviceId, this.firebaseToken});

  @override
  String getUri() {
    return ApiUri.login;
  }

  Map<String, dynamic> toJson() => {
    "loginModel": {"userName": username, "password": password, "code": code},
    "notificationModel": {"deviceId": deviceId, "firebaseToken": firebaseToken, "os": "Android"},
  };

  @override
  String body() {
    return json.encode(toJson());
  }
}
