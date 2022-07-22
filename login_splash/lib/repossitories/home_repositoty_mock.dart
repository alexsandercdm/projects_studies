import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:login_splash/models/post_model.dart';
import 'package:login_splash/repossitories/home_repository.dart';

class HomeRepositotyMock implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
