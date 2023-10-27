// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cupertinobmi/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';


class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: PlatformText('BMI'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: height * 0.8),
            child: Column(
              children: <Widget>[
                Image.network(
                    'https://images.unsplash.com/photo-1644760997911-a9b997fc8714?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                    Util.paddingTop,
                Row(
                  children: <Widget>[
                    Util.paddingLeft,
                    Container(
                      width: width / 3,
                      child: Text('Height')),
                    Expanded(
                      child: CupertinoTextField(),
                    ),
                    Util.paddingLeft,
                  ],
                ),
                Util.paddingTop,
                 Row(
                  children: <Widget>[
                    Util.paddingLeft,
                    Container(
                      width: width / 3,
                      child: Text('Weight')),
                    Expanded(
                      child: CupertinoTextField(),
                    ),
                    Util.paddingLeft,
                  ],
                ),
                Expanded(child: Util.paddingTop),
                CupertinoButton.filled(
                  child: Text('Calculate BMI'), 
                  onPressed: (){
                  },),
                  Util.paddingTop,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
