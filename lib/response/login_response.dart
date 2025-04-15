import 'package:getx/vo/login_response.dart';
import 'package:techgrains/com/techgrains/service/response/tg_response.dart';

class LoginResponse extends TGResponse {
  UserVO _userVO = UserVO();

  LoginResponse();

  LoginResponse.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  fromJson(dynamic json) {
    if (json != null) {
      _userVO = UserVO.fromJson(json);
    }
  }

  UserVO userVO() {
    return _userVO;
  }
}
