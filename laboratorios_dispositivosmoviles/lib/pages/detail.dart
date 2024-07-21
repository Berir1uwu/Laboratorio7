import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Segunda Pantalla")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Texto de ejemplo"),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Volver"))
            ],
          ),
        ));
  }
}
