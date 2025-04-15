import 'package:getx/vo/profile_vo.dart';

import 'access_token_vo.dart';
import 'notification_response_vo.dart';

class UserVO {
  AccessTokenVo? accessTokenVo;
  NotificationResponseVO? notificationResponseVO;
  ProfileVo? profileVO;

  UserVO({this.accessTokenVo, this.notificationResponseVO, this.profileVO});

  UserVO.fromJson(Map<String, dynamic> json) {
    accessTokenVo = json['accessTokenModel'] != null ? AccessTokenVo.fromJson(json['accessTokenModel']) : null;
    notificationResponseVO = json['notificationReponseModel'] != null ? NotificationResponseVO.fromJson(json['notificationReponseModel']) : null;

    profileVO = json['profileModel'] != null ? ProfileVo.fromJson(json['profileModel']) : null;

    Map<String, dynamic> toJson() => {'accessTokenModel': accessTokenVo, 'notificationReponseModel': notificationResponseVO, 'profileModel': profileVO};
  }
}
