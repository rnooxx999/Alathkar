import 'package:fancy_hidden_menu/ui/shared/globals.dart';
import 'package:fancy_hidden_menu/ui/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import '../../core/enums/enum.dart';
import '../../core/viewmodels/home_model.dart';

class HomeView extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

  //because HomeModel is taken the create property
  final model = Provider.of<HomeModel>(context);

  final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Global.darkBlue,
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Stack(
          children: <Widget>[
            AnimatedList(
            key: Global.globalKey,
            initialItemCount: model.listTile.length,
            itemBuilder: (context,index, animation){
            return SlideTransition(
            position: animation.drive(model.tween),
            child: MenuListWidget(item: model.listTile[index],));
            }),
            GestureDetector(
            onVerticalDragStart: (start){
            //the default :
            model.verticalDragStart = start.globalPosition.dy;
            },
            onVerticalDragUpdate: (update){
            if(model.verticalDragStart> update.globalPosition.dy){
            model.setBoxScrollDirection(BoxScrollDirection.Up);
            } else{model.setBoxScrollDirection(BoxScrollDirection.Down);}
            },
            onVerticalDragEnd: (end){
            if(model.boxScrollDirection == BoxScrollDirection.Up&& model.isToggled)
            {model.toggle();}
            else if(model.boxScrollDirection == BoxScrollDirection.Down && !model.isToggled){model.toggle(height: height);}
            },

              child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              transform: Matrix4.identity()
              ..translate(0.0 , model.tranlateY),
                child: Screen(
                  builder: (context) => HomeWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
