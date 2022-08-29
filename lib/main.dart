import 'package:flutter/material.dart';
import 'package:tugas_praktikum_16/basic_widgets/datetime_widget.dart';
import 'package:tugas_praktikum_16/basic_widgets/fab_widget.dart';
import 'package:tugas_praktikum_16/basic_widgets/image_widget.dart';
import 'package:tugas_praktikum_16/basic_widgets/loading_cupertino.dart';

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
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
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
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TextCenter(context),
      bottomNavigationBar: BottomApp(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  FloatingActionButton FloatingButton() {
    return FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment Counter',
      child: const Icon(Icons.add),
    );
  }

  BottomAppBar BottomApp() {
    return BottomAppBar(
      child: Container(
        height: 50.0,
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Center TextCenter(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
