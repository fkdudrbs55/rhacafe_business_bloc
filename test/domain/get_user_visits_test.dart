import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rhacafebusinessbloc/domain/cafe_visit.dart';
import 'package:rhacafebusinessbloc/domain/get_user_by_contact.dart';
import 'package:rhacafebusinessbloc/domain/get_user_visits.dart';
import 'package:rhacafebusinessbloc/domain/i_visit_repository.dart';

class MockVisitRepository extends Mock implements IVisitRepository {}

void main() {
  GetUserByContact getUserByContact;
  GetUserVisits getUserVisits;
  MockVisitRepository mockVisitRepository;

  setUp(() {
    mockVisitRepository = MockVisitRepository();
    getUserByContact = GetUserByContact(mockVisitRepository);
    getUserVisits = GetUserVisits(mockVisitRepository);
  });

  final tUserContactInput = 'testUserContactInput';
  final tUserID = 'testUserID';
  final tUserCafeVisit = CafeVisit(
      name: '라',
      contact: 'testUserContactInput',
      cafeID: '0000',
      stamps: 0,
      visits: 0);

  test('hmmm', () async {
    when(mockVisitRepository.getUserByContact(any))
        .thenAnswer((realInvocation) async => Right(tUserID));

    when(mockVisitRepository.getUserVisits(any))
        .thenAnswer((realInvocation) async => Right(tUserCafeVisit));
    
    final contactResult = await getUserByContact(ContactParams(string: tUserContactInput));
    
    expect(contactResult, Right(tUserID));

    verify(mockVisitRepository.getUserByContact(tUserContactInput));

    final userVisitResult = await getUserVisits(Params(string: tUserID));
    
    expect(userVisitResult, Right(tUserCafeVisit));

    verify(mockVisitRepository.getUserVisits(tUserID));

  });
}
