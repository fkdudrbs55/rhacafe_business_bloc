import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:rhacafebusinessbloc/core/error/failure.dart';
import 'package:rhacafebusinessbloc/domain/usecase.dart';
import 'i_visit_repository.dart';

class GetUserByContact implements UseCase<String, ContactParams>{

  final IVisitRepository repository;

  GetUserByContact(this.repository);

  @override
  Future<Either<Failure, String>> call(ContactParams params) async {
    return await repository.getUserByContact(params.string);
  }
}

class ContactParams extends Equatable {
  final String string;

  ContactParams({@required this.string});

  @override
  List<Object> get props => [string];
}