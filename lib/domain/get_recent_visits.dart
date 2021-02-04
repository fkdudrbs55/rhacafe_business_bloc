import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:rhacafebusinessbloc/domain/i_visit_repository.dart';
import 'package:rhacafebusinessbloc/domain/usecase.dart';
import 'cafe_visit.dart';
import '../core/error/failure.dart';

class GetRecentVisits extends UseCase<List<CafeVisit>, NoParams>{
  final IVisitRepository repository;

  GetRecentVisits(this.repository);

  @override
  Future<Either<Failure, List<CafeVisit>>> call(NoParams params) async {
    return await repository.getRecentVisits();
  }


}
