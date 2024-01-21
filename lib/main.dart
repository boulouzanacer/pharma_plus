import 'package:flutter/material.dart';
import 'package:flutter_jap_icons/medical_icons_icons.dart';
import 'package:gridview_menu/gridview_menu.dart' as Grid;
import 'MenuHomeScreen.dart';
import 'Page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharma Plus',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MenuHomeScreen(),
    );
  }
}

class MenuHomeScreen extends StatefulWidget {
  final Color color = Colors.pink.shade400;
  MenuHomeScreen({super.key});

  @override
  _MenuHomeScreenState createState() => _MenuHomeScreenState();
}

class _MenuHomeScreenState extends State<MenuHomeScreen> {
  @override
  Widget build(BuildContext context) {

    List<Grid.MenuItem> menuItem = <Grid.MenuItem>[
      Grid.MenuItem(
        icon: MedicalIcons.cardiology,
        color: widget.color,
        disabled: false,
        title: 'Personelle',
        subtitle: 'Tous les employees',
        child: const Page_view(title: "Personelle", tag: "1",)
      ),
      Grid.MenuItem(
        icon: MedicalIcons.billing,
        color: widget.color,
        disabled: false,
        title: 'Movement',
        subtitle: 'Mouvement medecament',
        child: const Page_view(title: "Movement", tag: "2",),
      ),
      Grid.MenuItem(
        icon: MedicalIcons.i_labor_delivery,
        color: widget.color,
        disabled: false,
        title: 'Calandrie promption',
        subtitle: 'Calandrie promption',
        child: const Page_view(title: "Calandrie promption", tag: "3",),
      ),
      Grid.MenuItem(
        icon: MedicalIcons.i_pharmacy,
        color: widget.color,
        disabled: false,
        title: 'Agendamentos',
        subtitle: 'Meus agendamentos',
        child: const Page_view(title: "Agendamentos", tag: "4",),
      ),
      Grid.MenuItem(
        icon: MedicalIcons.i_labor_delivery,
        color: widget.color,
        disabled: false,
        title: 'Agendamentos',
        subtitle: 'Meus agendamentos',
        child: const Page_view(title: "Agendamentos", tag: "5",),
      ),
      Grid.MenuItem(
        icon: MedicalIcons.genetics,
        color: widget.color,
        disabled: false,
        title: 'Paramètres',
        subtitle: 'Paramètres de l application',
        child: const Page_view(title: "Paramètres", tag: "setting",),
      ),
    ];
    return MyHomePage(menuItem: menuItem);
  }
}



