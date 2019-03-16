import 'package:flutter/material.dart';

/*
class MyPageWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MyPageWidgetState();
  }
}

class MyPageWidgetState extends State<MyPageWidget>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('我的'),
      ),
      body: new Center(
        child: Icon(Icons.mood,size: 130.0,color: Colors.blue,),
      ),
    );
  }
}*/

class MyPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<MyPageWidget>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 9,
        child: new Scaffold(
          appBar: new AppBar(
            title: const Text(
              '首页',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,

            bottom: new TabBar(
                labelStyle: TextStyle(
                  fontFamily: 'ProductSans',
                  fontWeight: FontWeight.bold,
                ),
                isScrollable: true,
                tabs: [
                  new Tab(
                    text: "关注",
                  ),
                  new Tab(
                    text: "推荐",
                  ),
                  new Tab(
                    text: "热搜",
                  ),
                  new Tab(
                    text: "关注1",
                  ),
                  new Tab(
                    text: "推荐1",
                  ),
                  new Tab(
                    text: "热搜1",
                  ),
                  new Tab(
                    text: "关注2",
                  ),
                  new Tab(
                    text: "推荐2",
                  ),
                  new Tab(
                    text: "热搜2",
                  )
                ]),
          ),
        ));
  }

}
