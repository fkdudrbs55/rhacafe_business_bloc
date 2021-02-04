import 'package:rhacafebusinessbloc/infrastructure/models/cafe_visit_model.dart';

abstract class CafeVisitLocalDataSource{

  Future<List<CafeVisitModel>> getRecentVisits();

}