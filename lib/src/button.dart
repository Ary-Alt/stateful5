import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

// Guión bajo es clase privada _
class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collections = ['Flutter', 'es', 'Genial :)'];

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Primera Aplicación de Stateful Widget 190570"),
        backgroundColor: Color.fromARGB(255, 6, 63, 6),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 3, 250, 11)),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  child: Text("Actualizar"),
                  onPressed: onPressedButton,
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 7, 156, 27)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
