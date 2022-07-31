// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:mastesclass_app_portfolio/model/aulas_model.dart';
import 'package:mastesclass_app_portfolio/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _homeRepository;

  HomeController(
    this._homeRepository,
  );

  ValueNotifier<List<AulasModel>> aulas = ValueNotifier<List<AulasModel>>([]);

  fetch() async {
    aulas.value = await _homeRepository.getList();
  }
}
