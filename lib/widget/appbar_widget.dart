import 'package:flutter/material.dart';
import '../generated/l10n.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  final String text;
  final String cadena;
  @override
  final Size preferredSize;
  const AppBarCustom({Key? key, required this.text, required this.cadena})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.orange],
          ),
        ),
      ),
      actions: [
        PopupMenuButton(
          tooltip: Labels().menu,
          onSelected: (value) {
            switch (value) {
              case '1':
                break;
              case '2':
                break;
              default:
            }
          },
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: '1',
                child: Text(Labels().menu1),
              ),
              PopupMenuItem(
                value: '2',
                child: Text(Labels().menu2),
              ),
            ];
          },
        )
      ],
    );
  }
}
