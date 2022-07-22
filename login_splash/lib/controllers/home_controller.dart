import 'package:flutter/material.dart';
import 'package:login_splash/models/post_model.dart';
import 'package:login_splash/repossitories/home_repository.dart';

class HomeController {
  final HomeRepository _homeRepository;

  HomeController(this._homeRepository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await _homeRepository.getList();
  }
}
