import 'package:flutter/material.dart';

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
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            //flutter---跳转
            FlatButton(
              child: Text("1--flutter__跳转"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new NewRoute();
                }));
                // debugDumpApp();
              },
            ),

            //flutter__字体
            FlatButton(
              child: Text("2--flutter__文本&字体样式"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new TextRoute();
                }));
                // debugDumpApp();
              },
            ),

            //flutter__按钮
            FlatButton(
              child: Text("3--flutter__按钮"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new ButtonRoute();
                }));
                // debugDumpApp();
              },
            ),
            //flutter__图片
            FlatButton(
              child: Text("4--flutter__图片"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new ImageRoute();
                }));
                // debugDumpApp();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("跳转"),
      ),
      body: Center(
        child: Text("Hello world"),
      ),
    );
  }
}

class TextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本&字体样式"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
            Text(
              "Hello world! I'm yang. " * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Hello world! I'm yang. " * 8,
              textAlign: TextAlign.center,
            ),
            Text(
              "Hello world",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: "BAIDU : "),
              TextSpan(
                  text: "https:www.baidu.com",
                  style: TextStyle(color: Colors.blue))
            ])),

            Text(
              "Hello world",
              textScaleFactor: 1.5,
            )
          ],
        ),
      ),
    );
  }
}

class ButtonRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("漂浮按钮"),
              onPressed: () => {},
            ),
            FlatButton(
              child: Text("扁平按钮"),
              onPressed: () => {},
            ),
            OutlineButton(
              child: Text("显框按钮"),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () => {},
            ),
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("自定义按钮"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => {},
            ),
            RaisedButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("自定义按钮"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => {},
            )
          ],
        ),
      ),
    );
  }
}

class ImageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图片"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("images/avatar.png"), width: 100.0),
            Image.asset(
              "images/avatar.png",
              width: 100.0,
            ),
            Text(
              "----上图为本地 , 下图是网络----",
              textAlign: TextAlign.center,
            ),
            Image(
              image: NetworkImage(
                  "https://admin.luezhi.com/resource/images/login/logo-luezhi.png"),
              width: 100.0,
            ),
            Image.network(
              "https://admin.luezhi.com/resource/images/login/logo-luezhi.png",
              width: 100.0,
            ),


      Text("\uE914 \uE000 \uE90D",
      style: TextStyle(
          fontFamily: "MaterialIcons",
          fontSize: 50.0,
          color: Colors.green
      ),
    )
          ],
        ),
      ),
    );
  }
}
