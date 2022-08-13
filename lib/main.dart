import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final url ="https://jsonplaceholder.typicode.com/posts";

  void _postData() async{
   try {
    final response = await post(Uri.parse(url), body: {
      "title": "anything",
      "body": "hello json",
      "userId": "1"
    });

    print(response.body);
  }  catch(er){}

}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed:_postData ,
            child: const Text("Press me"),
          ),
        ),
      ),
    );
  }
}

