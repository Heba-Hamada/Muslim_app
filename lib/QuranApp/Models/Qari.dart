import 'package:flutter/material.dart';

class Qurai {
  String? name;
  String? path;
  String? format;

  Qurai({required this.name, required this.path, required this.format});

  factory Qurai.fromJson(Map<String, dynamic> json) {
    return Qurai(
        name: json['name'],
        path: json['relative_path'],
        format: json['file_formats']);
  }
}
