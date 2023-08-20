import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //Scaffoldはアプリの土台となる部品。マテリアルデザインの基本的なデザインとしてレイアウトが組み込まれている。
      //引数のappBarとbodyは基本となる要素。他にも表示する要素がある。
      home: Scaffold(
        //appBarは、アプリ上部に表示されるバー（アプリケーションバー）を設定する値。
        //AppBarクラスのインスタンスは、アプリケーションバーのウィジェットクラス。
        appBar: AppBar(
          title: Text('Hello Flutter!'),
        ),
        //bodyは、アプリケーションバーの下の空白エリア全体の表示を担当する。
        //ここではTextをウィジェットを指定しているが、実際の開発では、多数のウィジェットを配置するためのコンテナとしての働きをもつウィジェットを組み込み利用することになる。
        body: Text(
          'Hello, Flutter World!!',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    );
  }
}
