import 'package:fancy_hidden_menu/core/viewmodels/home_model.dart';
import 'package:fancy_hidden_menu/ui/shared/globals.dart';
import 'package:fancy_hidden_menu/ui/widgets/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeWidget extends Screen {
  @override
  Widget build(BuildContext context) {
  final model = Provider.of<HomeModel>(context);
    return Center(
      child: Column(
        children: <Widget>[
        SizedBox(height: 100,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Icon(model.active.icon , size: 40,color: Global.blue,),
          SizedBox(width: 30,),
            Text(model.active.name,
            style: TextStyle(color: Global.blue, fontSize: 38, fontWeight: FontWeight.bold),
            ),
          ],
        ),
          Padding(
            padding: const EdgeInsets.only(left: 38.0, right : 38.0, top: 30),
            child: Text(model.active.adiah, textAlign: TextAlign.center,
            style: TextStyle(color: Global.darkBlue, fontSize: 17, fontWeight: FontWeight.bold),
),
          ),
        ],
      ),
    );
  }
}
