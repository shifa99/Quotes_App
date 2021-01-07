import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_app/Models/Quote.dart';
import 'package:weather_app/Services/FetchQuotes.dart';
import 'package:weather_app/Widgets/BuildQuote.dart';
class Quotes extends StatefulWidget {
   static final routeName='quotesScreen';
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  Widget build(BuildContext context) {
    FetchQuotes fetchQuotes=FetchQuotes();
   
    return Scaffold(
          body: 
      FutureBuilder<List<Quote>>(future: fetchQuotes.fetchData(),builder: (ctx,snapshot)
      {
        if(snapshot.connectionState==ConnectionState.waiting)
        return Center(child:CircularProgressIndicator(backgroundColor: Colors.yellowAccent,));
        else
        return PageView.builder(itemCount: snapshot.data.length,
        itemBuilder:(ctx,i)=>BuildQuote(text:snapshot.data[i].text,author:snapshot.data[i].author,color: 
        Color((Random().nextDouble()*0xFFFFFF).toInt()).withOpacity(1)) );


      })

          
    );
  }
}