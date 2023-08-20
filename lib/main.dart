import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final title = 'Flutterサンプル';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: this.title),
    );
  }
}

//MyHomePageというクラスをStatefulWidgetクラスとして作成。
class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title}) : super();

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message = 'Hello!';

  //ステートクラス内にステートの変更のための処置を用意。
  void _setMessage() {
    //setStateメソッドは、ステートの更新をステートクラスに知らせる働きをする。
    //このメソッドに必要な値の変更処理を用意しておく。
    //更新時に下記のbuildメソッドが再実行されて、このステートクラスのフィールドを使っているところ（今回は_messageの箇所）が変更される。
    setState(() {
      _message = 'タップしました!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text(
        _message,
        style: TextStyle(fontSize: 32.0),
      ),
      //フローティングアクションボタンは、丸いアイコンを表示したボタン
      //他のウィジェットの配置とは関係なく、いつも常に決まった場所（画面の右下あたり）に配置される。
      floatingActionButton: FloatingActionButton(
        //ボタンをクリックした時の処理
        //通常割り当てるメソッド名を指示する。
        onPressed: _setMessage,
        //ユーザーがボタンをタップ、ロングタップした時にメッセージを表示する。
        tooltip: 'set message.',
        //このウィジェット内に組み込まれているウィジェット類をまとめたもの。
        //ここでは、表示するアイコンをIconで用意してある。
        //Iconsクラスは主なアイコンを示す値をプロパティとしてまとめたもの。
        child: Icon(Icons.star),
      ),
    );
  }
}
