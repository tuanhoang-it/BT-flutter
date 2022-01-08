import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Sign Up'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.chevron_left),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(20),
                child: const TextField(
                  style: TextStyle(color: Colors.green),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email*'),
                )),
            Container(
                margin: const EdgeInsets.all(20),
                child: const TextField(
                  style: TextStyle(color: Colors.green),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password*'),
                )),
            Container(
                margin: const EdgeInsets.all(20),
                child: const TextField(
                  style: TextStyle(color: Colors.green),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm password*'),
                )),
            Container(
                margin: const EdgeInsets.all(20),
                child: const TextField(
                  style: TextStyle(color: Colors.green),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Phone number*'),
                )),
            Container(
                margin: const EdgeInsets.all(20),
                child: const TextField(
                  style: TextStyle(color: Colors.green),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'ID Kakao Talk'),
                )),
            Container(
              color: Colors.red,
              // ignore: deprecated_member_use, prefer_const_constructors
              child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        // backgroundColor: Colors.black,
                        fontSize: 30),
                  )),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    'Have an account?  ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.blue,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ]))
          ],
        ),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }

  CustomButton(int i, String s) {}
}
