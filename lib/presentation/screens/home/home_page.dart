import 'package:chicken_admin/presentation/widgets/app_button.dart';
import 'package:chicken_admin/presentation/widgets/home_table.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const name = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: AppButton( onPressed: () {
                    //Metodo
                  },icon: const Icon(Icons.add_shopping_cart)),
                ),
                const SizedBox(width: 10),
                Expanded(child: AppButton( onPressed: () {
                    //
                },icon:const Icon(Icons.monetization_on))),
              ],
            ),
            
            Divider(height: 50, indent: 20, endIndent: 20,color: Colors.lightBlue.shade200,),

            //const SizedBox(height: 30,),
            //HISTORIAL
            Container(
              alignment: Alignment.center,
              child: const Text('Historial', style: TextStyle(fontSize: 25)),
            ),

            //TABLA COMPRAS
            const Padding(
              padding: EdgeInsets.symmetric(),
              child: Text('Compras',style: TextStyle(fontSize: 20),),
            ),
            Expanded(
              child: HomeTable().getSfDataGrid(TabType.Buys),
            ),

            Divider(height: 50, indent: 20, endIndent: 20,color: Colors.lightBlue.shade200,),

            //TABLA VENTAS
            const Padding(
              padding: EdgeInsets.symmetric(),
              child: Text('Ventas',style: TextStyle(fontSize: 20),),
            ),
            Expanded(
              child: HomeTable().getSfDataGrid(TabType.Sales),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}


