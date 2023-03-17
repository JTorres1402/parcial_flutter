import 'package:flutter/material.dart';
import 'package:parcial/generated/l10n.dart';
import 'package:parcial/logic/logic.dart';
import 'package:parcial/widget/drawer_widget.dart';
import 'package:parcial/widget/show_message_widget.dart';
import 'package:parcial/widget/gradient_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String inputValue = '';
  late String inputGeneValue = '';

  TextEditingController inputController = TextEditingController();
  TextEditingController inputGeneController = TextEditingController();
  String resultado = '';
  String cadena = '';
  void _state() {
    setState(() {
      cadena = inputValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Labels().home),
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
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(Labels().inputGene),
                      content: TextField(
                        controller: inputGeneController,
                        onChanged: (value) {
                          inputGeneValue = value;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: Labels().inputGene,
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(context, Labels().cancel),
                          child: Text(Labels().cancel),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, Labels().ok);
                            if (inputGeneValue != '' && inputGeneValue != '0') {
                              setState(() {
                                inputValue = numAleat(inputGeneValue);
                                inputController.text = inputValue;
                                inputGeneController.clear();
                                inputGeneValue = '';
                              });
                            } else {
                              inputGeneController.clear();
                              inputController.text = '';
                              inputValue = '';
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => ShowMessage(
                                  title: Labels().error,
                                  content: Labels().labelError,
                                ),
                              );
                            }
                          },
                          child: Text(Labels().ok),
                        ),
                      ],
                    ),
                  );

                  break;
                case '2':
                  inputController.clear();
                  inputValue = '';
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
      ),
      drawer: DrawerCustom(cadena: cadena),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: inputController,
                  onChanged: (value) {
                    inputValue = value;
                  },
                  onTapOutside: (event) {
                    _state();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: Labels().input,
                  ),
                ),
                const SizedBox(height: 16.0),
                RadioListTile(
                  title: Text(Labels().rbutton1),
                  value: '1',
                  groupValue: resultado,
                  onChanged: (value) {
                    setState(() {
                      resultado = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: Text(Labels().rbutton2),
                  value: '2',
                  groupValue: resultado,
                  onChanged: (value) {
                    setState(() {
                      resultado = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: Text(Labels().rbutton3),
                  value: '3',
                  groupValue: resultado,
                  onChanged: (value) {
                    setState(() {
                      resultado = value!;
                    });
                  },
                ),
                const SizedBox(height: 30.0),
                GradientButton(
                  text: Labels().button,
                  onPressed: () {
                    switch (resultado) {
                      case '1':
                        showDialog(
                          context: context,
                          builder: (context) => ShowMessage(
                            title: '${Labels().labelrb1}:',
                            content: pares(inputValue),
                          ),
                        );
                        break;
                      case '2':
                        showDialog(
                          context: context,
                          builder: (context) => SingleChildScrollView(
                            child: ShowMessage(
                              title: '${Labels().labelrb2}:',
                              content: '${impares(inputValue)}',
                            ),
                          ),
                        );
                        break;
                      case '3':
                        showDialog(
                          context: context,
                          builder: (context) => ShowMessage(
                            title: '${Labels().labelrb3}:',
                            content: sum(inputValue),
                          ),
                        );
                        break;
                      default:
                    }
                    setState(() {
                      resultado = '';
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
