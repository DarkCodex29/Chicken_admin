// ignore_for_file: constant_identifier_names

import 'package:chicken_admin/domain/datasources/custom_buy_sale_datasource.dart';
import 'package:chicken_admin/domain/entities/buy.dart';
import 'package:chicken_admin/domain/entities/sale.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class HomeTable {
  List<Buy> buys = <Buy>[];
  List<Sale> sales = <Sale>[];
  late CustomDataSource buyDataSource;
  late CustomDataSource saleDataSource;

  HomeTable() {
    initState();
  }

  void initState() {
    buys = getBuyData();
    sales = getSaleData();
    buyDataSource = CustomDataSource(buyData: buys,saleData: []);
    saleDataSource = CustomDataSource(buyData: [], saleData: sales);
  }

  SfDataGrid getSfDataGrid(TabType tabType) {
    late CustomDataSource dataSource;

    if (tabType == TabType.Buys) {
      dataSource = buyDataSource;
    } else if (tabType == TabType.Sales) {
      dataSource = saleDataSource;
    }

    return SfDataGrid(
      source: dataSource,
      columnWidthMode: ColumnWidthMode.fill,
      columns: <GridColumn>[
        GridColumn(
          columnName: 'idSale',
          label: Container(
            padding: const EdgeInsets.all(10.0),
            color:Colors.lightBlue.shade200,
            alignment: Alignment.center,
            child: const Text(
              'N°',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
          columnName: 'fecha',
          label: Container(
            padding: const EdgeInsets.all(10.0),
            color:Colors.lightBlue.shade200,
            alignment: Alignment.center,
            child: const Text(
              'FECHA',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
          columnName: 'direccion',
          label: Container(
            padding: const EdgeInsets.all(10.0),
            color:Colors.lightBlue.shade200,
            alignment: Alignment.center,
            child: const Text(
              'DIRECCION',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
          columnName: 'precioSale',
          label: Container(
            padding: const EdgeInsets.all(10.0),
            color:Colors.lightBlue.shade200,
            alignment: Alignment.center,
            child: const Text(
              'PRECIO',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}

enum TabType {
  Buys,
  Sales,
}
