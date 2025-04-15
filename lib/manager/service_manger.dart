import 'package:getx/vo/service_error.dart';
import 'package:techgrains/com/techgrains/common/tg_log.dart';
import 'package:techgrains/com/techgrains/service/request/tg_post_request.dart';
import 'package:techgrains/com/techgrains/service/tg_service.dart';

import '../response/login_response.dart';

class ServiceManager {
  static final ServiceManager _instance = ServiceManager();

  static ServiceManager getInstance() {
    return _instance;
  }

  login({required TGPostRequest request, required Function(LoginResponse) onSuccess, required Function(LoginResponse) onError, required Function callAPIAgain}) async {
    TGLog.d("ServiceManager.login: ${request.getUrl()}");
    TGLog.d("ServiceManager.login: ${request.body()}");

    await TGService<LoginResponse, ServiceError>(() => LoginResponse(), () => ServiceError()).post(
      request: request,
      onSuccess: (response) => onSuccess(response),
      onError: (error) {
        return onError(error);
      },
    );
  }
}
