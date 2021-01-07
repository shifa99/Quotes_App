import 'package:flutter/material.dart';
import 'package:weather_app/Services/Constants.dart';
import 'package:weather_app/Widgets/BuildRow.dart';
class BuildQuote extends StatelessWidget {
  final String text;
  final String author;
  final Color color;
  final KStyleQuote= TextStyle(fontSize: 40,color: Colors.black);
  BuildQuote({this.text,this.author,this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.all(10),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        KQuote,
        SelectableText(text,style: KStyleQuote),
        SizedBox(height:30),
        SelectableText(author,style:KStyleQuote.copyWith(fontSize:30,fontWeight: FontWeight.normal)),
        SizedBox(height:100),
        BuildRow(),
      ],),
    );
  }
}