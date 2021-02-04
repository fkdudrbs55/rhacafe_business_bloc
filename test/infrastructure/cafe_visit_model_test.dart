import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rhacafebusinessbloc/domain/cafe_visit.dart';
import 'file:///C:/Users/ykrha/AndroidStudioProjects/rhacafe_business_bloc/lib/infrastructure/models/cafe_visit_model.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  final tCafeVisitModel = CafeVisitModel(
      name: '라영균',
      contact: '01071505430',
      cafeID: 'asd',
      stamps: 0,
      visits: 0);

  test(
      "Should be a subclass of CafeVisit entity",
          () async {
        expect(tCafeVisitModel, isA<CafeVisit>());
      }
  );

  group('fromJson', () {
    test(
      'should return a valid model when the JSON number is an integer',
          () async {
        // arrange
        final Map<String, dynamic> jsonMap = json.decode(fixture('visit.json'));
        // act
        final result = CafeVisitModel.fromJson(jsonMap);
        // assert
        expect(result, tCafeVisitModel);
      },
    );
  });

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
          () async {
        // act
        final result = tCafeVisitModel.toJson();
        // assert
        final expectedJsonMap = {
          "name": "라영균",
          "contact": "01071505430",
          "cafeID": "asd",
          "stamps": 0,
          "visits": 0
        };
        expect(result, expectedJsonMap);
      },
    );
  });
}