class Product{
  final String idProduct;
  final String nombre;
  final String categoria;
  final int stock;
  final String unidad;
  final double precio;

  Product({
    required this.idProduct,
    required this.nombre,
    required this.categoria,
    required this.stock,
    required this.unidad,
    required this.precio
  });
}

List<Product> getProductData(){
  return [
    Product(idProduct: 'P01', nombre: 'Pollo', categoria: 'Carnes', stock: 15, unidad: 'Kg', precio: 18.0),
    Product(idProduct: 'P02', nombre: 'Res', categoria: 'Carnes', stock: 10, unidad: 'Kg', precio: 14.0),
    Product(idProduct: 'P03', nombre: 'Pavita', categoria: 'Carnes', stock: 5, unidad: 'Kg', precio: 20.0),
    Product(idProduct: 'P04', nombre: 'Huevos', categoria: 'Abarrotes', stock: 50, unidad: 'Jabas', precio: 17.0),
    Product(idProduct: 'P05', nombre: 'Aceituna', categoria: 'Abarrotes', stock: 15, unidad: 'Kg', precio: 7.0),
    Product(idProduct: 'P06', nombre: 'Queso', categoria: 'Lacteos', stock: 3, unidad: 'Kg', precio: 19.0),
  ];
}