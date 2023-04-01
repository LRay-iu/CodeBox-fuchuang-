class UserModel {
  int id;
  String name;
  String userId;
  String password;

  UserModel({required this.id,required this.name, required this.userId, required this.password});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "userId": userId,
      "password": password,
    };
  }
}


