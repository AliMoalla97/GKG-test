import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Users {
  String? userName;
  String? userGender;
  String? userEmail;
  String? userPass;
  Users({
    this.userName,
    this.userGender,
    this.userEmail,
    this.userPass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'userGender': userGender,
      'userEmail': userEmail,
      'userPass': userPass,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      userName: map['userName'],
      userGender: map['userGender'],
      userEmail: map['userEmail'],
      userPass: map['userPass'],
    );
  }
}
