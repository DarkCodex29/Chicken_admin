import 'package:chicken_admin/domain/entities/product.dart';

class DetailBuy extends Product{

  final int cantidad;

  DetailBuy({required this.cantidad, required super.idProduct, required super.nombre, required super.categoria, required super.stock, required super.unidad, required super.precio});
  double calcularSubTotal(){
    return cantidad*precio ;
  }
  int actulizarStock(){
    return stock-cantidad;
  }
  
}