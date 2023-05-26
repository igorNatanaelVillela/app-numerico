import 'package:flutter/material.dart';

ElevatedButton buttonCalculation(
    {Function()? funcao, String texto = '', color}) {
  return ElevatedButton(
    onPressed: funcao,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        color,
      ),
    ),
    child: Text(
      texto,
      style: const TextStyle(
        fontSize: 15,
      ),
    ),
  );
}
