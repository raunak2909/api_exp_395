import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<dynamic> mQuotes = [];

  @override
  void initState() {
    super.initState();
    getAllQuotes();
  }

  void getAllQuotes() async{

    String url = "https://dummyjson.com/quotes";

    var response = await http.get(Uri.parse(url));

    print("Res: ${response.body}");

    dynamic mData = jsonDecode(response.body);

    mQuotes = mData["quotes"];
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: mQuotes.isNotEmpty ? ListView.builder(
          itemCount: mQuotes.length,
          itemBuilder: (_, index){
        return Card(
          child: ListTile(
            title: Text(mQuotes[index]["quote"]),
            subtitle: Text(mQuotes[index]["author"]),
          ),
        );
      }) : Center(
        child: Text('No Quotes'),
      ),
    );
  }
}
