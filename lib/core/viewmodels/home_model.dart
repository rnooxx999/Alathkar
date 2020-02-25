
import 'package:fancy_hidden_menu/core/models/models.dart';
import 'package:fancy_hidden_menu/core/viewmodels/base_model.dart';
import 'package:fancy_hidden_menu/ui/shared/globals.dart';
import 'package:fancy_hidden_menu/ui/widgets/menu_list_widget.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class HomeModel extends BaseModel {

List <MenuData>listTile =[];

double  tranlateY = 0.0;

bool isToggled = false;

void toggle({height}){
  isToggled = !isToggled;
  _getListTile();
  if (isToggled ){
  tranlateY = height - 180;
  _updateItem();
  }
  else{tranlateY = 0.0;   _deletItem();
}
}

Animatable <Offset> get tween =>  _tween();
Animatable <Offset> _tween (){
var begin = Offset(0.0 , 1.0);
var end = Offset.zero;
var tween = Tween(begin: begin , end:  end).chain(
CurveTween(curve: Curves.easeInOutQuart));
return tween;
}

//method casting the list to map and the otherwise
void _getListTile(){
listTile = Global.menuItems.map((item) =>MenuData.fromMap(item)).toList();
}


 void _updateItem()async{
 for(int i =0 ;i < Global.menuItems.length ; ++i){
 await Future.delayed(Duration(milliseconds: 75), (){
 Global.globalKey.currentState.insertItem(i, duration: Duration(milliseconds: 500));
 });
 }
 }

void _deletItem() {
 for(int i =Global.menuItems.length - 1; i >=0; --i){
 final deletedItem = listTile.removeAt(i);
 Global.globalKey.currentState.removeItem(i, (context , animation){
 return SlideTransition(
            position: animation.drive(tween),
            child: MenuListWidget(item: deletedItem,));

 },duration: Duration(milliseconds: 500));
 }
 
 }
}

