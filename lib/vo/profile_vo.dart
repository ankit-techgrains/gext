class ProfileVo {
  int profileId = 0;
  int uId = 0;
  String userName = '';
  List<String> roles = [];
  String name = '';
  String email = '';
  bool hasPassword = false;
  bool active = false;
  bool emailVerified = false;
  bool phoneVerified = false;
  String phone = '';
  String dob = '';

  ProfileVo(
      {this.profileId = 0,
      this.uId = 0,
      this.userName = '',
      this.roles = const [],
      this.name = '',
      this.email = '',
      this.hasPassword = false,
      this.active = false,
      this.emailVerified = false,
      this.phoneVerified = false,
      this.phone = '',
      this.dob = ''});

  ProfileVo.fromJson(Map<String, dynamic> json) {
    profileId = json['profileId'];
    uId = json['uId'] ?? 0;
    userName = json['userName'];
    roles = json['roles'].cast<String>() ?? [];
    name = json['name'] ?? "";
    email = json['email'] ?? "";
    hasPassword = json['hasPassword'] ?? false;
    active = json['active'] ?? false;
    emailVerified = json['emailVerified'] ?? false;
    phoneVerified = json['phoneVerified'] ?? false;
    phone = json['phone'] ?? "";
    dob = json['dob'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['profileId'] = profileId;
    data['uId'] = uId;
    data['userName'] = userName;
    data['roles'] = roles;
    data['name'] = name;
    data['email'] = email;
    data['hasPassword'] = hasPassword;
    data['active'] = active;
    data['emailVerified'] = emailVerified;
    data['phoneVerified'] = phoneVerified;
    data['phone'] = phone;
    data['dob'] = dob;
    return data;
  }
}
