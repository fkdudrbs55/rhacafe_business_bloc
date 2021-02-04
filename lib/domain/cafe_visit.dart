import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class CafeVisit extends Equatable {
  final String name;
  final String contact;
  final String cafeID;
  final int stamps;
  final int visits;

  CafeVisit(
      {@required this.name, @required this.contact, @required this.cafeID, @required this.stamps, @required this.visits,});

  @override
  List<Object> get props => [name, contact, cafeID, stamps, visits];
}
