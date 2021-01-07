import 'package:flutter/material.dart';
import 'package:weather_app/Services/Constants.dart';
class BuildWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        //  Text('""',style: KStyle.copyWith(fontSize: 45,fontWeight: FontWeight.normal),),
        KQuote,
        Text('Get',style: KStyle.copyWith(fontSize: 47,fontWeight: FontWeight.normal),),
        Text('Inspired',style: KStyle),
        
        ],),
    );
  }
}