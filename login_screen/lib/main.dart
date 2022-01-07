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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Login Screen'),
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
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/loginscreen2.jpg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset(
                //   'images/obito1.png',
                //   width: 200,
                //   height: 150,
                // ),
                // ignore: prefer_const_constructors
                Text(
                  'Fellow 4U',
                  style:
                      const TextStyle(fontSize: 40, color: Colors.pinkAccent),
                ),
                const SizedBox(
                  height: 150,
                ),
                // ignore: prefer_const_constructors
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink, width: 4.0),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off,
                          size: 30, color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink, width: 4.0),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: 'Password'),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  //bằng với chiều dài của textfied
                  // width: MediaQuery.of(context).size.width,
                  height: 40,
                  width: 100,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white, backgroundColor: Colors.green),
                    child: const Text('Sign In'),
                    // ignore: avoid_print
                    onPressed: () => {print('Login!')},
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  " Don't have an account? Sign Up ",
                  style: TextStyle(color: Colors.purpleAccent),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => {},
                      // ignore: prefer_const_constructors
                      icon: Icon(
                        Icons.qr_code_2_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
