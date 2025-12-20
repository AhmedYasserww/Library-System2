class AuthModel {
  AuthModel({
      this.id, 
      this.message, 
      this.isAuthenticated, 
      this.username, 
      this.email, 
      this.roles, 
      this.token, 
      this.expiresOn,});

  AuthModel.fromJson(dynamic json) {
    id = json['id'];
    message = json['message'];
    isAuthenticated = json['isAuthenticated'];
    username = json['username'];
    email = json['email'];
    roles = json['roles'] != null ? json['roles'].cast<String>() : [];
    token = json['token'];
    expiresOn = json['expiresOn'];
  }
  String? id;
  dynamic message;
  bool? isAuthenticated;
  String? username;
  String? email;
  List<String>? roles;
  String? token;
  String? expiresOn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['message'] = message;
    map['isAuthenticated'] = isAuthenticated;
    map['username'] = username;
    map['email'] = email;
    map['roles'] = roles;
    map['token'] = token;
    map['expiresOn'] = expiresOn;
    return map;
  }

}