import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/Models/Quote.dart';
class FetchQuotes
{
  final url="https://type.fit/api/quotes";
  List<Quote>quotes=[];
  Future<List<Quote>>fetchData()async
  {
    final data=await http.get(url);
    if(data.statusCode==200){
     var quoteDetails=jsonDecode(data.body) as List;
     for (var quote in quoteDetails)
          quotes.add(Quote(author: quote['author']==null?' ':quote['author'],text: quote['text']==null?' ':quote['text']));
    }
    return quotes;
    
     }
}