import 'package:app_numerico_igor/model/calculate_value.dart';

class CalculateValueController {
  static final CalculateValueController instance = CalculateValueController();

  int valor = CalculateValue.instance.getValor();

  int somar() {
    valor += 5;

    return valor;
  }

  int subtract() {
    valor -= 5;

    return valor;
  }

  int multiplication() {
    valor *= 2;

    return valor;
  }

  int resetValue() {
    valor = valor * 0;

    return valor;
  }

  String parImper(int valor) {
    String text;

    if (valor % 2 == 0) {
      text = 'Este número é Par';
    } else {
      text = 'Este número é ímper';
    }

    return text;
  }
}
