import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final title = 'Flutterサンプル';
  final message = 'サンプル・メッセージ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: this.title, message: this.message),
    );
  }
}

//MyHomePageというクラスをStatefulWidgetクラスとして作成。
class MyHomePage extends StatefulWidget {
  final String title;
  final String message;

  //上記のMyApp内のhomeでインスタンス化された時に引数を渡されている。
  //その引数で受け取った値をこのMyHomePage内のフィールドに設定している。
  const MyHomePage({Key? key, required this.title, required this.message})
      : super(key: key);

  //下記の_MyHomePageStateクラスをこのMyHomePageクラスのステートクラスとして設定。
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //widgetというのは、Stateクラスに用意されるプロパティで、このステートが設定されているウィジェット（ここではMyHomePageクラス)のインスタンスが代入されている。
        title: Text(widget.title),
      ),
      body: Text(
        widget.message,
        style: TextStyle(fontSize: 32.0),
      ),
    );
  }
}
