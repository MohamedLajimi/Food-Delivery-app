import 'package:equatable/equatable.dart';
import 'package:user_repository/src/entities/entities.dart';

// ignore: must_be_immutable
class MyUser extends Equatable {
  String id;
  String fullName;
  String email;

  MyUser({required this.id, required this.fullName, required this.email});

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      id: entity.id,
      fullName: entity.fullName,
      email: entity.email,
    );
  }

  MyUserEntity toEntity() {
    return MyUserEntity(
      id: id,
      fullName: fullName,
      email: email,
    );
  }

  @override
  List<Object?> get props => [id, fullName, email];
}
