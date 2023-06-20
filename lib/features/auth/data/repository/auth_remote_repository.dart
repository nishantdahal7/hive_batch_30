import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hive_and_api_for_class/core/failure/failure.dart';
import 'package:hive_and_api_for_class/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:hive_and_api_for_class/features/auth/domain/entity/student_entity.dart';
import 'package:hive_and_api_for_class/features/auth/domain/repository/auth_repository.dart';

class AuthRemoteRepository implements IAuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRemoteRepository(this._authRemoteDataSource);

  @override
  Future<Either<Failure, String>> uploadProfilePicture(File file) {
    return _authRemoteDataSource.uploadProfilePicture(file);
  }

  @override
  Future<Either<Failure, bool>> loginStudent(String username, String password) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> registerStudent(StudentEntity student) {
    throw UnimplementedError();
  }
}
