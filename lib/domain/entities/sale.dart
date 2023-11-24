
class Sale{
  final String idSale;
  final DateTime fecha;
  final String direccion;
  final double precioSale;

  Sale(
      {required this.idSale,
      required this.fecha,
      required this.direccion,
      required this.precioSale,
      });
}

List<Sale> getSaleData(){
    return[
      Sale(idSale: 'V101', fecha: DateTime(2023,08,28), direccion: 'Hogar 1',precioSale: 10.0),
      Sale(idSale: 'V102', fecha: DateTime(2023,08,28), direccion: 'Hogar 2',precioSale: 50.0),
      Sale(idSale: 'V103', fecha: DateTime(2023,08,28), direccion: 'Hogar 3',precioSale: 16.0),
      Sale(idSale: 'V104', fecha: DateTime(2023,08,28), direccion: 'Hogar 4',precioSale: 18.0),
      Sale(idSale: 'V105', fecha: DateTime(2023,08,28), direccion: 'Hogar 5',precioSale: 199.0),
      Sale(idSale: 'V106', fecha: DateTime(2023,08,28), direccion: 'Hogar 6',precioSale: 122.0),
    ];
}


