import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform =
      const MethodChannel('samples.flutter.dev/goToNativePage');

  Future<void> _goToNativePage() async {
    try {
      final int result = await platform
          .invokeMethod('goToNativePage', {'test': 'from flutter'});
      print(result);
    } on PlatformException catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("flutter title"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                child: Text('去原生界面试试看'),
                onPressed: _goToNativePage,
                color: Colors.blueAccent,
                textColor: Colors.white,
              ),
              Text(
                "Flutter 测试界面",
                style: new TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Georgia",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}