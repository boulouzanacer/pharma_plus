import 'package:flutter/material.dart';
import 'package:gridview_menu/gridview_menu.dart' as Grid;

class MyHomePage extends StatefulWidget {
  final List<Grid.MenuItem> menuItem;
  const MyHomePage({super.key, required this.menuItem});

  @override
  State<MyHomePage> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<MyHomePage> {
  bool _showList = false; // False shows a grid view or List view if its true

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        //iconTheme: Icons.ac_unit,
        title: const FittedBox(
          fit: BoxFit.fitWidth,
          child: Text('Pharma Plus'),
        ),
        /*actions: <Widget>[
          IconButton(
            icon: Icon(_showList ? Icons.grid_on : Icons.grid_off),
            onPressed: () {
              if (mounted) {
                setState(() {
                  _showList = !_showList;
                });
              }
            },
          ),
        ],*/
      ),
      body: Grid.MobileSidebar(
        breakPoint: 2000,
        items: widget.menuItem,
        showList: false,
      ),
    );
  }
}
