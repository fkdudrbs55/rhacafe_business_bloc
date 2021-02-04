
import 'package:rhacafebusinessbloc/infrastructure/models/cafe_visit_model.dart';

abstract class CafeVisitRemoteDataSource{

  Future<String> getUserByContact();

  Future<CafeVisitModel> getUserVisits(String userID);
}