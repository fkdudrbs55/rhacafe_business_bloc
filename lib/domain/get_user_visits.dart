import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:rhacafebusinessbloc/core/error/failure.dart';
import 'package:rhacafebusinessbloc/domain/cafe_visit.dart';
import 'package:rhacafebusinessbloc/domain/usecase.dart';
import 'i_visit_repository.dart';

class GetUserVisits extends UseCase<CafeVisit, Params>{

  final IVisitRepository repository;

  GetUserVisits(this.repository);

  @override
  Future<Either<Failure, CafeVisit>> call(Params params) async {
    return await repository.getUserVisits(params.string);
  }

}

class Params extends Equatable {
  final String string;

  Params({@required this.string});

  @override
  List<Object> get props => [string];
}