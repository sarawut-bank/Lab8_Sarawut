import 'package:flutter/material.dart';
import 'package:sara_cafe_app/drinkmenu.dart';
import 'package:sara_cafe_app/foodmenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SARA CAFE',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("SARA CAFE"),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: TabBarView(children: [
          Foodmenu(),
          Drinkmenu(),
        ]),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              text: "Food Menu",
            ),
            Tab(
              text: "Drink Menu",
            )
          ],
          labelColor: Colors.purple,
        ),
      ),
    );
  }
}
