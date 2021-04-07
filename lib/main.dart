import 'package:flutter/material.dart';
import 'package:flutter_demo/startup_name.dart';
import 'package:flutter_demo/layout_demo.dart';

//入口
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(primaryColor: Colors.blue),
        home: new Scaffold(
          appBar: new AppBar(title: new Text('Flutter Demo')),
          body: new ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              ListItem(
                title: 'startup_name',
                screenPage: new RandomWords(),
              ),
              ListItem(
                title: 'layout_demo',
                screenPage: new LayoutDemo(),
              ),
            ],
          ),
        ));
  }
}

class ListItem extends StatefulWidget {
  const ListItem({
    this.title,
    this.screenPage,
  });

  final String title;
  final Widget screenPage;

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(widget.title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.screenPage),
        );
      },
    );
  }
}
