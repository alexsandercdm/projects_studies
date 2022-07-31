// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AulasModel {
  String title;
  String description;
  String iconSvg;
  AulasModel(
      {required this.title, required this.description, required this.iconSvg});

  factory AulasModel.fromJson(Map json) {
    return AulasModel(
      title: json['title'],
      description: json['description'],
      iconSvg: json['iconSvg'],
    );
  }

  @override
  String toString() {
    return 'title: $title';
  }
}
