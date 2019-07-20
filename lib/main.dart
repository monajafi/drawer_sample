import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MultiPageDrawer(),
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Text(
          "Main Page",
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MultiPageDrawer(),
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Text(
          "Second Page",
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MultiPageDrawer(),
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
        child: Text(
          "Third Page",
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}

class MultiPageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("images/maldiv.jpg"),
                  radius: 44,
                ),
                Text(
                  "\nMousa Najafi",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: Icon(Icons.skip_next, color: Colors.blue),
            title: Text("Second Page"),
            onTap: () {
              Navigator.popUntil(
                  context, ModalRoute.withName(Navigator.defaultRouteName));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
          Divider(
            color: Colors.orange,
          ),
          ListTile(
            leading: Icon(
              Icons.library_books,
              color: Colors.orange,
            ),
            title: Text("Third page"),
            onTap: () {
              Navigator.popUntil(
                  context, ModalRoute.withName(Navigator.defaultRouteName));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdPage()));
            },
          ),
          Divider(
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
