import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertinobmi/util.dart';

class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int unit = 0;
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
     double height = MediaQuery.of(context).size.height;
    final Map<int, Widget> systems = const <int, Widget>{
      0: Text('Decimal'),
      1: Text('Imperial'),
    };

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Settings'),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Image.network('https://images.unsplash.com/photo-1644760997911-a9b997fc8714?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
            Util.paddingTop,
            Row(children: [
              SizedBox(
                width: width,
                
                child: CupertinoSegmentedControl(
                  children: systems, 
                  groupValue: unit,
                  onValueChanged: (int value){
                    updateControl(value);
                  }),
              )
            ],)
          ],
        ),),
    );
  }


void updateControl(int value){
  if(value != unit){
    setState((){
      unit = value;
    });
  }
}
}