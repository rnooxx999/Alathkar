import 'package:flutter/material.dart';

class MenuData {
  String name;
  IconData icon;
  String adiah;

  MenuData.fromMap(data):
        this.name = data['name'],
        this.icon = data['icon'],
        this.adiah = data['adiah'];

}
