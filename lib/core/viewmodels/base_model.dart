import 'package:fancy_hidden_menu/core/enums/enum.dart';
import 'package:fancy_hidden_menu/core/models/models.dart';
import 'package:fancy_hidden_menu/ui/shared/globals.dart';
import 'package:flutter/material.dart';

class BaseModel extends ChangeNotifier {

 BoxScrollDirection boxScrollDirection;
  void setBoxScrollDirection(value){
    boxScrollDirection = value;
    notifyListeners();
  }
double _verticalDragStart = 0.0;
get verticalDragStart => _verticalDragStart;
set verticalDragStart(value){
_verticalDragStart = value;
notifyListeners();
}

MenuData _active = MenuData.fromMap(Global.menuItems.first);
MenuData get active => _active ;
set active (value){
_active = value;
notifyListeners();
}


}
