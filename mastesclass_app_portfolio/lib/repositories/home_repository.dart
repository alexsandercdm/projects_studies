import 'package:mastesclass_app_portfolio/model/aulas_model.dart';

abstract class HomeRepository {
  Future<List<AulasModel>> getList();
}
