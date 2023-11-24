import 'package:chicken_admin/domain/entities/buy.dart';
import 'package:chicken_admin/domain/entities/sale.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CustomDataSource extends DataGridSource {
  CustomDataSource({
    required List<Buy> buyData,
    required List<Sale> saleData,
  }) {
    _data = [..._convertBuysToDataGridRows(buyData), ..._convertSalesToDataGridRows(saleData)];
  }

  List<DataGridRow> _data = [];

  List<DataGridRow> _convertBuysToDataGridRows(List<Buy> buys) {
    return buys.map<DataGridRow>((buy) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'idBuy', value: buy.idBuy),
      DataGridCell<String>(columnName: 'fecha', value: DateFormat('dd-MM-yyyy').format(buy.fecha)),
      DataGridCell<String>(columnName: 'direccion', value: buy.direccion),
      DataGridCell<double>(columnName: 'precio', value: buy.precioBuy),
    ])).toList();
  }

  List<DataGridRow> _convertSalesToDataGridRows(List<Sale> sales) {
    return sales.map<DataGridRow>((sale) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'idSale', value: sale.idSale),
      DataGridCell<String>(columnName: 'fecha', value: DateFormat('dd-MM-yyyy').format(sale.fecha) ),
      DataGridCell<String>(columnName: 'direccion', value: sale.direccion),
      DataGridCell<double>(columnName: 'precioSale', value: sale.precioSale),
    ])).toList();
  }

  @override
  List<DataGridRow> get rows => _data;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return GestureDetector(
        onTap: () {
          
        },
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5.0),
          child: Text(e.value.toString()),
        ),
      );
    }).toList());
  }
}
