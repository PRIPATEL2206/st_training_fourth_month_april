class User {
  String? photoUrl;
  String? name;
  String? msg;
  String? time;

  User({this.photoUrl, this.name, this.msg});

  User.fromJson(Map<String, dynamic> json)
      : photoUrl = json['photoUrl'],
        name = json['name'],
        time = json['time'],
        msg = json['msg'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['photoUrl'] = photoUrl;
    data['name'] = name;
    data['msg'] = msg;
    return data;
  }
}
