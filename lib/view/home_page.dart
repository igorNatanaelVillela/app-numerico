import 'package:app_numerico_igor/components/app_bar.dart';
import 'package:app_numerico_igor/components/button_calculation.dart';
import 'package:app_numerico_igor/controller/calculate_value_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _total = 0;
  String _text = 'Este número é Par';
  Color _green = Color.fromARGB(255, 73, 170, 8);
  Color _red = Color.fromARGB(255, 194, 6, 6);
  Color _blue = Color.fromARGB(255, 25, 147, 218);
  Color _amber = Color.fromARGB(255, 241, 238, 41);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Número",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            _total.toString(),
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            _text,
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonCalculation(
                funcao: () {
                  setState(() {
                    _total = CalculateValueController.instance.somar();
                    _text = CalculateValueController.instance.parImper(_total);
                  });
                },
                texto: '+ 5',
                color: _green,
              ),
              SizedBox(
                width: 10,
              ),
              buttonCalculation(
                funcao: () {
                  setState(() {
                    _total = CalculateValueController.instance.subtract();
                    _text = CalculateValueController.instance.parImper(_total);
                  });
                },
                texto: '- 5',
                color: _red,
              ),
              SizedBox(
                width: 10,
              ),
              buttonCalculation(
                funcao: () {
                  setState(() {
                    _total = CalculateValueController.instance.multiplication();
                    _text = CalculateValueController.instance.parImper(_total);
                  });
                },
                texto: 'x2',
                color: _blue,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonCalculation(
                funcao: () {
                  setState(() {
                    _total = CalculateValueController.instance.resetValue();
                    _text = CalculateValueController.instance.parImper(_total);
                  });
                },
                texto: 'Zerar Número',
                color: _amber,
              ),
            ],
          )
        ],
      ),
    );
  }
}
