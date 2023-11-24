class Buy{
  final String idBuy;
  final DateTime fecha;
  final String direccion;
  final double precioBuy;

  Buy(
      {required this.idBuy,
      required this.fecha,
      required this.direccion,
      required this.precioBuy});
}

List<Buy> getBuyData(){
    return[
      Buy(idBuy: 'C101', fecha: DateTime(2023,08,28), direccion: 'Hogar 1', precioBuy: 20.2),
      Buy(idBuy: 'C102', fecha: DateTime(2023,08,28), direccion: 'Hogar 2', precioBuy: 201.0),
      Buy(idBuy: 'C103', fecha: DateTime(2023,08,28), direccion: 'Hogar 3', precioBuy: 24.0),
      Buy(idBuy: 'C104', fecha: DateTime(2023,08,28), direccion: 'Hogar 4', precioBuy: 165.21),
      Buy(idBuy: 'C105', fecha: DateTime(2023,08,28), direccion: 'Hogar 5', precioBuy: 25.1),
    ];
}



