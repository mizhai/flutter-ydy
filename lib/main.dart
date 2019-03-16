import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'HomePageWidget.dart';
import 'BusinessPageWidget.dart';
import 'MyPageWidget.dart';

void main() => runApp(MyApp1());

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // final wordPair = new WordPair.random();
    return new  MaterialApp(
      title: "welcome to flutter",
     */ /* home:  Scaffold(
        appBar: AppBar(
          title:  Text("welcome 123456 "),
        ),
        body:  Center(
          //child:  Text("Hello12 "),
         // child: new Text(wordPair.asCamelCase),
          child: new RandomWords(),
        ),
      ),*/ /*
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home:new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget{
  @override
  createState()=>new RadomWordsState();
}

class RadomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = new Set<WordPair>();
  @override
  Widget build(BuildContext context) {
    //final wordPair = new WordPair.random();
    //return (new Text(wordPair.asCamelCase));
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('hahha'),
        actions:<Widget>[
         new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),

    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tiles = _saved.map(
                (pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = ListTile
              .divideTiles(
            context: context,
            tiles: tiles,
          )
              .toList();

          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saved Suggestions'),
            ),
            body: new ListView(children: divided),
          );
        },
      ),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asCamelCase,
        style: _biggerFont,
      ),
      trailing:  new Icon(
        alreadySaved?Icons.favorite:Icons.favorite_border,
        color: alreadySaved?Colors.red:null,
      ),
      onTap: (){setState(() {
        if(alreadySaved){
          _saved.remove(pair);
        }else{
          _saved.add(pair);
        }
      });
      },
    );
  }
}*/
//------------------------------App分割线-------------------------------

class MyApp1 extends StatelessWidget {
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
   /* return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
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
            //单选框 和复选框
            FlatButton(
              child: Text("5--flutter__单选开关和复选框选中状态切换"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new SwitchAndCheckBoxTestRoute();
                }));
                // debugDumpApp();
              },
            ),
            //输入框和表单
            FlatButton(
              child: Text("6--flutter__输入框和表单"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new FormRoute();
                }));
                // debugDumpApp();
              },
            ),
            FlatButton(
              child: Text("7--flutter__输入框焦点"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new FocusTestRoute();
                }));
                // debugDumpApp();
              },
            ),

            FlatButton(
              child: Text("8--弹性布局"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new FlexLayoutTestRoute();
                }));
                // debugDumpApp();
              },
            ),

            FlatButton(
              child: Text("9--Wrap流式布局"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new WrapLayoutTestRoute();
                }));
                // debugDumpApp();
              },
            ),

             FlatButton(
              child: Text("10--flutter 导航按钮"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                      return new ScaffoldRoute();
                    }));
                // debugDumpApp();
              },
            ),
            FlatButton(
              child: Text("11--flutter 导航按钮"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new BottomNavigationRoute();
                }));
                // debugDumpApp();
              },
            ),

            FlatButton(
              child: Text("12--可滚动Widget SingleChildScrollView"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                      return new SingleChildScrollViewTestRoute();
                    }));
                // debugDumpApp();
              },
            ),

          ],
        )
        ),
      ),
    );*/


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
            //单选框 和复选框
            FlatButton(
              child: Text("5--flutter__单选开关和复选框选中状态切换"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new SwitchAndCheckBoxTestRoute();
                }));
                // debugDumpApp();
              },
            ),
            //输入框和表单
            FlatButton(
              child: Text("6--flutter__输入框和表单"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new FormRoute();
                }));
                // debugDumpApp();
              },
            ),
            FlatButton(
              child: Text("7--flutter__输入框焦点"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new FocusTestRoute();
                }));
                // debugDumpApp();
              },
            ),

            FlatButton(
              child: Text("8--弹性布局"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new FlexLayoutTestRoute();
                }));
                // debugDumpApp();
              },
            ),

            FlatButton(
              child: Text("9--Wrap流式布局"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new WrapLayoutTestRoute();
                }));
                // debugDumpApp();
              },
            ),

             FlatButton(
              child: Text("10--flutter 导航按钮"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                      return new ScaffoldRoute();
                    }));
                // debugDumpApp();
              },
            ),
            FlatButton(
              child: Text("11--flutter 导航按钮"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new BottomNavigationRoute();
                }));
                // debugDumpApp();
              },
            ),

           /* FlatButton(
              child: Text("12--可滚动Widget SingleChildScrollView"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                      return new SingleChildScrollViewTestRoute();
                    }));
                // debugDumpApp();
              },
            ),*/

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
            Text(
              "外部字体",
              style: TextStyle(
                fontFamily: "HanaleiFill",
              ),
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
            Text(
              "\uE914 \uE000 \uE90D",
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 50.0,
                  color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  _SwitchAndCheckBoxTestRouteState createState() =>
      new _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("单选开关和复选框选中状态切换"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Switch(
              value: _switchSelected, //当前状态
              onChanged: (value) {
                //重新构建页面
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.red, //选中时的颜色
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class FormRoute extends StatelessWidget {
  TextEditingController _selectionController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框和表单"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              /*onChanged: (v){
                print("onChange:$v");
              },*/
              controller: _selectionController,
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}

class FocusTestRoute extends StatefulWidget {
  @override
  _FocusTestRouteState createState() {
    return new _FocusTestRouteState();
  }
}

class _FocusTestRouteState extends State<FocusTestRoute> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框和表单"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              focusNode: focusNode1, //关联focusNode1
              decoration: InputDecoration(labelText: "input1"),
            ),
            TextField(
              focusNode: focusNode2, //关联focusNode2
              decoration: InputDecoration(labelText: "input2"),
            ),
            Builder(
              builder: (ctx) {
                return Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("移动焦点"),
                      onPressed: () {
                        //将焦点从第一个TextField移到第二个TextField
                        // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                        // 这是第二种写法
                        if (null == focusScopeNode) {
                          focusScopeNode = FocusScope.of(context);
                        }
                        focusScopeNode.requestFocus(focusNode2);
                      },
                    ),
                    RaisedButton(
                      child: Text("隐藏键盘"),
                      onPressed: () {
                        // 当所有编辑框都失去焦点时键盘就会收起
                        focusNode1.unfocus();
                        focusNode2.unfocus();
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FlexLayoutTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flex弹性布局"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //Flex的两个子widget按1：2来占据水平空间
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 100.0,
                //Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 30.0,
                        color: Colors.red,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30.0,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WrapLayoutTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap流式布局"),
      ),
      body: Center(
        child: Wrap(
          spacing: 8.0, // 主轴(水平)方向间距
          runSpacing: 4.0, // 纵轴（垂直）方向间距
          alignment: WrapAlignment.center, //沿主轴方向居中
          children: <Widget>[
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('A')),
              label: new Text('Hamilton'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('M')),
              label: new Text('Lafayette'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('H')),
              label: new Text('Mulligan'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('J')),
              label: new Text('Laurens'),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BottomNavigationWidgetState();
  }
}

class BottomNavigationWidgetState extends State<BottomNavigationRoute> {
  int _currentIndex = 0;

  List<Widget> pages = new List();

  @override
  void initState() {
    // TODO: implement initState
    pages.add(MyPageWidget());
    pages.add(HomePageWidget());
    pages.add(BusinessPageWidget());
  }

  @override
  Widget build(BuildContext context) {
    /*
    返回一个脚手架，里面包含两个属性，一个是底部导航栏，另一个就是主体内容
     */
    return new Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //底部导航栏的创建需要对应的功能标签作为子项，这里我就写了3个，每个子项包含一个图标和一个title。
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: new Text(
                '首页',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
              ),
              title: new Text(
                'hello',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.mood,
              ),
              title: new Text(
                '我的',
              )),
        ],
        //这是底部导航栏自带的位标属性，表示底部导航栏当前处于哪个导航标签。给他一个初始值0，也就是默认第一个标签页面。
        currentIndex: _currentIndex,
        //这是点击属性，会执行带有一个int值的回调函数，这个int值是系统自动返回的你点击的那个标签的位标
        onTap: (int i) {
          //进行状态更新，将系统返回的你点击的标签位标赋予当前位标属性，告诉系统当前要显示的导航标签被用户改变了。
          setState(() {
            _currentIndex = i;
          });
        },
        // type: BottomNavigationBarType.shifting),
        // body: pages[_currentIndex],
      ),
    );
  }
}

class ScaffoldRoute extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;
  TabController _tabController; //需要定义一个Controller
  List tabs = ["新闻", "历史", "图片"];

  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //导航栏
        title: Text("App Name"),
        bottom: TabBar(
            //生成Tab菜单
            controller: _tabController,
            tabs: tabs.map((e) => Tab(text: e)).toList()),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),

      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) { //创建3个Tab页
          return Container(
            alignment: Alignment.center,
            child: Text(e, textScaleFactor: 5),
          );
        }).toList(),
      ),
      // drawer: new MyDrawer(), //抽屉
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
          //悬浮按钮
          child: Icon(Icons.add),
          onPressed: _onAdd),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd() {}
}


class SingleChildScrollViewTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str.split("")
            //每一个字母都用一个Text显示,字体为原来的两倍
                .map((c) => Text(c, textScaleFactor: 2.0,))
                .toList(),
          ),
        ),
      ),
    );
  }
}
