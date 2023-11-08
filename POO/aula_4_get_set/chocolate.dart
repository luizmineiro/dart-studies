class Chocolate {
  String _marca;
  double _calorias;

  Chocolate(
    this._marca,
    this._calorias,
  );

  String get getMarca {
    return this._marca;
  }

  void set setMarca(String marca) {
    this._marca = marca;
  }

  double get getCalorias {
    return this._calorias;
  }

  void set setCalorias(double calorias) {
    this._calorias = calorias;
  }
}
