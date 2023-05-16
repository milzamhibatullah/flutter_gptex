
import 'package:flutter/material.dart';
import 'package:flutter_gptex/ui/component/appbar.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(elevation: 1.0),
      backgroundColor: Colors.white,
    );
  }
}