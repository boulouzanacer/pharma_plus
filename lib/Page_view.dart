import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page_view extends StatefulWidget {
  final String title;
  final String tag;
  const Page_view({super.key, required this.title, required this.tag});

  @override
  State<Page_view> createState() => _Page_viewState();
}

class _Page_viewState extends State<Page_view> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            widget.tag == "setting"? createAppBarIcon(widget.tag):Text(""),
            widget.tag == "4"? createAppBarIcon(widget.tag):Text(""),
          ],
        ),
        body: Center(
          child: Text(widget.title),
        ),
      ),
    );
  }

  Widget createAppBarIcon(String tag){
    String tagg = tag;
    return IconButton(
      icon: Icon(
        tagg == "setting"? Icons.settings : tagg == "4"? Icons.ac_unit : Icons.abc,
        color: Colors.white,
      ),
      onPressed: () {
        if(tagg == "setting"){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Setting")));
        }else if(tagg == "4"){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("4")));
        }
        // do something
      },
    );
  }
}