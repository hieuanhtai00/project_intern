class UserModel {
  String name = '', avatar = '', birthday = '', phone = '';
  UserModel(
      {required this.name,
      required this.avatar,
      required this.birthday,
      required this.phone});
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      avatar: map['avatar'] as String,
      birthday: map['birthday'],
      phone: map['phone'] as String,
    );
  }
}
