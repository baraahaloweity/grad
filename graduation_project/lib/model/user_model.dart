class UserModel {
  String name;
  int age;
  String email;
  //String password;
  //String confirmPassword;

  UserModel(
      {
        required this.name,
        required this.age,
        required this.email,
        //required this.password,
        //required this.confirmPassword,

      });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'name': name,
      'email': email,
      'age': age,
      //'password': password,
      //'confirm_password': confirmPassword,
    };
    return map;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      email: map['email'] as String,
      age: map['age'] as int ,
      //password: map['password'] as String,
      //confirmPassword: map['confirm_password'] as String,
    );
  }

  UserModel copyWith({
    String? name,
    String? email,
    int? age,
    //String? password,
    //String? confirmPassword,


  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      age: age ?? this.age,
      //password: password ?? this.password,
      //confirmPassword: confirmPassword ?? this.confirmPassword,

    );
  }
}
