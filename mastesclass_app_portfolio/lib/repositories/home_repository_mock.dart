import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mastesclass_app_portfolio/model/aulas_model.dart';
import 'package:mastesclass_app_portfolio/repositories/home_repository.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<AulasModel>> getList() async {
    var value = await rootBundle.loadString('assets/data/data.json');
    List aulasJson = jsonDecode(value);
    return aulasJson.map((e) => AulasModel.fromJson(e)).toList();
  }
}
