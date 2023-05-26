class CalculateValue {
  static final CalculateValue instance = CalculateValue._(0);

  CalculateValue._(this._valor);

  int _valor;

  int getValor() {
    return _valor;
  }

  void setValor(int valor) {
    this._valor = _valor;
  }
}
