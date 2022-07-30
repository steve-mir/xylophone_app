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
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Xylophone"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomButton(Colors.green),
          CustomButton(Colors.blue),
          CustomButton(Colors.white),
          CustomButton(Colors.yellow),
          CustomButton(Colors.orange),
          CustomButton(Colors.teal),
          CustomButton(Colors.grey),
          CustomButton(Colors.red),
        ],
      ),
    );
  }

  Expanded CustomButton(Color color) {
    return Expanded(
      child: Container(
        color: color,
        child: InkWell(
          onTap: () => print("Clicked"),
          child: Center(child: Text("Note1")),
        ),
      ),
    );
  }
}
