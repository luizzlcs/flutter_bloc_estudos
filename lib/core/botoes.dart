import 'package:flutter/material.dart';

class Botoes extends StatelessWidget {
  final String nomeBotao;
  VoidCallback dentroDoOnPressed;

  Botoes({Key? key, required this.nomeBotao, required this.dentroDoOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: dentroDoOnPressed,
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 89, 61, 107),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        nomeBotao,
        style: TextStyle(fontSize: 26, color: Colors.white),
      ),
    );
  }
}
