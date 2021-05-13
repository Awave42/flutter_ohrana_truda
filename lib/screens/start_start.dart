import 'package:flutter/material.dart';

void main() {
  runApp(new MyFirstWidget());
}

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

   
String url = "https://source.unsplash.com/random/800x600";
    return MaterialApp(
  home: Scaffold(
    body: Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RaisedButton(
            child: Text("Press Me"),
            onPressed: changeURL,
          ),
          Image.network(url)
        ]
      )
    )
  )
);

void changeURL() {
    setState(() {
  url = "https://source.unsplash.com/random/800x600/?" +
      "q=${new DateTime.now().millisecondsSinceEpoch}"; 
});
}