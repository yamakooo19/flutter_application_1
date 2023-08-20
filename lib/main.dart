import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //テーマを指定するためのもの
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //Keyはウィジェットを識別するためのIDのようなもの
  //上記のMyAppクラスのMyHomePageインスタンスを作成している部分を見るとわかるが、Keyは用意されなくとも自動的に割り当てられる
  //ただ、実際にはこのKeyは特に使われておらず、必要ないことも多いので省略可。
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //_counterフィールドの用意
  int _counter = 0;

  //_counterフィールドを1つずつ足すメソッドの用意
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              //この$_counterという値は、変数_counterをテキストリテラル内に埋め込んでいる
              //Dartでは、このように「$変数」という形で変数をリテラル内に埋め込むことができる。
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
