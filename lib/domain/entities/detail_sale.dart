import 'package:chicken_admin/domain/entities/product.dart';

class DetailSale extends Product{

  final int cantidad;

  DetailSale({required this.cantidad, required super.idProduct, required super.nombre, required super.categoria, required super.stock, required super.unidad, required super.precio});
  double calcularSubTotal(){
    return cantidad*precio ;
  }

  int actulizarStock(){
    return stock-cantidad;
  }
  
}