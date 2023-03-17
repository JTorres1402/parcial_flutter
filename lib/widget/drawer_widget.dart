import 'package:flutter/material.dart';
import 'package:parcial/widget/show_message_widget.dart';
import '../generated/l10n.dart';
import '../logic/logic.dart';

class DrawerCustom extends StatelessWidget {
  final String cadena;

  const DrawerCustom({super.key, required this.cadena});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          ListTile(
            title: Text(Labels().menu3),
            onTap: () {
              media(cadena);
              showDialog<String>(
                context: context,
                builder: (context) =>
                    ShowMessage(title: Labels().menu3, content: media(cadena)),
              );
            },
          ),
          ListTile(
            title: Text(Labels().menu4),
            onTap: () {
              numOrden(cadena);
              showDialog<String>(
                context: context,
                builder: (context) => SingleChildScrollView(
                  child: ShowMessage(
                      title: Labels().menu4, content: '${numOrden(cadena)}'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.red, Colors.orange],
      ),
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 20.0,
          left: 20.0,
          child: Text(
            Labels().home,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ),
  );
}
