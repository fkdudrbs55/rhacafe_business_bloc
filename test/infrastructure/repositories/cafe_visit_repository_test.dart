import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rhacafebusinessbloc/core/network_info.dart';
import 'package:rhacafebusinessbloc/infrastructure/datasources/cafe_visit_local_data_source.dart';
import 'package:rhacafebusinessbloc/infrastructure/datasources/cafe_visit_remote_data_source.dart';
import 'package:rhacafebusinessbloc/infrastructure/repositories/cafe_visit_repository.dart';

class MockRemoteDataSource extends Mock implements CafeVisitRemoteDataSource {}

class MockLocalDataSource extends Mock implements CafeVisitLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  CafeVisitRepository repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    repository = CafeVisitRepository(
        remoteDataSource: mockRemoteDataSource,
        localDataSource: mockLocalDataSource,
        networkInfo: mockNetworkInfo);
  });
}
