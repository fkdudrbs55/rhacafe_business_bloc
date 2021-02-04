import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:rhacafebusinessbloc/domain/cafe_visit.dart';
import 'package:rhacafebusinessbloc/domain/get_recent_visits.dart';
import 'package:rhacafebusinessbloc/domain/i_visit_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:ui';

import 'package:rhacafebusinessbloc/domain/usecase.dart';

class MockVisitRepository extends Mock implements IVisitRepository {}

void main() {
  GetRecentVisits usecase;
  MockVisitRepository mockVisitRepository;

  setUp(() {
    mockVisitRepository = MockVisitRepository();
    usecase = GetRecentVisits(mockVisitRepository);
  });

  final List<CafeVisit> tCafeVisitList = List();
  tCafeVisitList.add(CafeVisit(name: '라', contact: '01000000000', cafeID: '0000', stamps: 0, visits: 0));
  tCafeVisitList.add(CafeVisit(name: '라', contact: '01000000000', cafeID: '11111', stamps: 1, visits: 1));

  test('Should get cafelist from the repository', () async {
    when(mockVisitRepository.getRecentVisits())
        .thenAnswer((_) async => Right(tCafeVisitList));

    final result = await usecase(NoParams());

    expect(result, Right(tCafeVisitList));

    verify(mockVisitRepository.getRecentVisits());

    verifyNoMoreInteractions(mockVisitRepository);
  });
}
