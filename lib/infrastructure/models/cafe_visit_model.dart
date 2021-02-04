import 'package:flutter/cupertino.dart';
import 'package:rhacafebusinessbloc/domain/cafe_visit.dart';

class CafeVisitModel extends CafeVisit {
  CafeVisitModel({
    @required String name,
    @required String contact,
    @required String cafeID,
    @required int stamps,
    @required int visits,
  }) : super(
      name: name,
      contact: contact,
      cafeID: cafeID,
      stamps: stamps,
      visits: visits);

  factory CafeVisitModel.fromJson(Map<String, dynamic> json){
    return CafeVisitModel(name: json['name'],
        contact: json['contact'],
        cafeID: json['cafeID'],
        stamps: json['stamps'],
        visits: json['visits']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name' : name,
      'contact' : contact,
      'cafeID' : cafeID,
      'stamps' : stamps,
      'visits' : visits
    };
  }
}
