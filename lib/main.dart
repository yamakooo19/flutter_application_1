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

class MyHomePage extends StatefulWidget {
  const MyHomePage({title = 'Flutter Demo'}) : super();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//ここでは、複数の値で構成されたデータを扱うクラスとしてDataというクラスを定義する。
//複雑な値を扱う場合、必要な情報をまとめたクラスとして定義し利用するのが一般的
class Data {
  //プロパティの用意
  int _price;
  String _name;
  //引数で受け取った値をプロパティに設置するコンストラクタ
  Data(this._name, this._price) : super();

  //内容をテキストにまとめて出力するようにしている。
  @override
  String toString() {
    // TODO: implement toString
    return _name + ':' + _price.toString() + '円';
  }
}

class _MyHomePageState extends State<MyHomePage> {
  //Dataインスタンスをまとめたリストを用意
  //後でリストを改変することがないため、static finalに設定。
  static final _data = [
    Data('Apple', 200),
    Data('Orange', 150),
    Data('Peach', 300)
  ];
  //リストの中から選んだDataを保管するプロパティの用意。
  //これで起動時に最初のDataが表示されるようになる。
  Data _item = _data[0];

  //shuffleはリストの項目をランダムに入れ替えるメソッド。
  //firstは最初の項目のプロパティ
  //これによりランダムに1つ取り出せる。
  void _setData() {
    setState(() {
      _item = (_data..shuffle()).first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set data'),
      ),
      body: Text(
        _item.toString(),
        style: TextStyle(fontSize: 32.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setData,
        tooltip: 'set message.',
        child: Icon(Icons.star),
      ),
    );
  }
}
