class AccessTokenVo {
  String accessToken = '';
  String refreshToken = '';
  String clientKey = '';
  int uId = 0;

  AccessTokenVo(
      {this.accessToken = '',
      this.refreshToken = '',
      this.clientKey = '',
      this.uId = 0});

  AccessTokenVo.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'] ?? "";
    refreshToken = json['refreshToken'] ?? "";
    clientKey = json['clientKey'] ?? "";
    uId = json['uId'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accessToken'] = accessToken;
    data['refreshToken'] = refreshToken;
    data['clientKey'] = clientKey;
    data['uId'] = uId;
    return data;
  }
}
