import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class MyUserEntity extends Equatable {
  String id;
  String fullName;
  String email;

  MyUserEntity({required this.id, required this.fullName, required this.email});

  Map<String, dynamic> toDocument() {
    return {'id': id, 'fullName': fullName, 'email': email};
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
        id: doc['id'] as String,
        fullName: doc['fullName'] as String,
        email: doc['email'] as String);
  }

  @override
  List<Object?> get props => [id, fullName, email];
}
