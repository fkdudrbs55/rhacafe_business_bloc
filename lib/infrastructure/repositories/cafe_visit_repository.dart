import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:rhacafebusinessbloc/core/error/failure.dart';
import 'package:rhacafebusinessbloc/core/network_info.dart';
import 'package:rhacafebusinessbloc/domain/cafe_visit.dart';
import 'package:rhacafebusinessbloc/domain/i_visit_repository.dart';
import 'package:rhacafebusinessbloc/infrastructure/datasources/cafe_visit_local_data_source.dart';
import 'package:rhacafebusinessbloc/infrastructure/datasources/cafe_visit_remote_data_source.dart';

class CafeVisitRepository implements IVisitRepository {

  final CafeVisitRemoteDataSource remoteDataSource;
  final CafeVisitLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  CafeVisitRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<CafeVisit>>> getRecentVisits() {
    // TODO: implement getRecentVisits
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> getUserByContact(String contact) {
    // TODO: implement getUserByContact
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CafeVisit>> getUserVisits(String userID) {
    // TODO: implement getUserVisits
    throw UnimplementedError();
  }

}