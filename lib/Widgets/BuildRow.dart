import 'package:flutter/material.dart';
import 'package:weather_app/Services/Constants.dart';
class BuildRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment:MainAxisAlignment.center,
        children: [
        Container(decoration: KDecoration,
        child: IconButton(icon:Icon(Icons.share), onPressed: (){})),
        SizedBox(width:10),
        Container(decoration: KDecoration,
        child: IconButton(icon: Icon(Icons.favorite), onPressed: (){})),
        ],);
  }
}