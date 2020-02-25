import 'package:fancy_hidden_menu/core/models/models.dart';
import 'package:fancy_hidden_menu/core/viewmodels/home_model.dart';
import 'package:fancy_hidden_menu/ui/shared/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuListWidget extends StatelessWidget {
final MenuData item ;
MenuListWidget({this.item});

  @override
  Widget build(BuildContext context) {
  final model = Provider.of<HomeModel>(context);
  bool isSelected = model.active.name == item.name;

    return Padding(
            padding: const EdgeInsets.only(left :20.0, right: 20.0,top: 10.0, bottom: 10.0),
            child: InkWell(
            borderRadius: BorderRadius.circular(19.0),
            onTap: (){
            model.active =item;

            model.toggle();
            },
              child: Container(height: 88,decoration: BoxDecoration(
              color: isSelected ?Global.white: Global.lightBlue.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Icon(item.icon),
              Text(item.name),
              ],),),
            ),
          );
  }
}
