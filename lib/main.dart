import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/viewmodels/home_model.dart';
import 'ui/views/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  //that save and update the moves in Provider Class
    return ChangeNotifierProvider(
    //it's got the file that have an notifyListeners()
      create: (context) => HomeModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
