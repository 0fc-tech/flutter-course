import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title:"titre"),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
      appBar: AppBar(title: Text(widget.title),),
      body:  Align(
        alignment: Alignment.bottomLeft,
        child: InkWell(
              onTap: ()=> Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TargetPage()),
                ),
              child: Hero(
                  tag: "photo",
                  child: Image.asset("images/sample.jpg")),
              )
      )
    );
  }
}
class TargetPage extends StatelessWidget {
  const TargetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag:"photo",
        child: Image.asset(
          "images/sample.jpg",
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,)
      )
    );
  }
}

