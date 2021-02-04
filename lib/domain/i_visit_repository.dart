import 'package:dartz/dartz.dart';
import 'package:rhacafebusinessbloc/core/error/failure.dart';
import 'cafe_visit.dart';

abstract class IVisitRepository{

  //사용자가 해당 업장에 대해 가지고 있는 데이터를 단순 Local cache
  Future<Either<Failure, List<CafeVisit>>> getRecentVisits();

  Future<Either<Failure, String>> getUserByContact(String contact);

  Future<Either<Failure, CafeVisit>> getUserVisits(String userID);

}