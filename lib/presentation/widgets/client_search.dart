import 'package:chicken_admin/domain/entities/client.dart';
import 'package:chicken_admin/presentation/providers/utils.dart';
import 'package:chicken_admin/presentation/screens/client/delete_page.dart';
import 'package:chicken_admin/presentation/screens/client/edit_page.dart';
import 'package:chicken_admin/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClientSearch extends StatefulWidget {
  const ClientSearch({
    Key? key,
  }) : super(key: key);

  @override
  State<ClientSearch> createState() => _ClientSearchState();
}

class _ClientSearchState extends State<ClientSearch> {
  late UtilsProvider utils;
  List<Client> filteredClient= [];

  @override
  void initState() {
    super.initState();
    filteredClient=getClientData;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    utils = Provider.of<UtilsProvider>(context);
    utils.listaInicial(getClientData);
  }

  void onSearch(String search){
    setState(() {
      filteredClient = getClientData
              .where((client) =>
              client.nombre.toLowerCase().contains(search.toLowerCase()))
          .toList();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text('Clientes', style: TextStyle(fontSize: 25)),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: onSearch,
                  //(searchText) {
                    //utils.searchObject(searchText, (client) => client.nombre);},
                  
                  style: const TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    hintText: 'Buscar cliente...',
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.lightBlue.shade200,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.lightBlue.shade200,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              AppButton(
                  onPressed: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const EditScreen(),
                      ),
                    );

                    if (result != null) {
                      utils.addObject(result);
                    }
                  },
                  icon: const Icon(Icons.add)),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 30),
              itemCount: utils.objects.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => EditScreen(
                                cliente: utils.objects[index] as Client),
                          ),
                        );
                        if (result != null) {
                          utils.editObject(index, result);
                        }
                      },
                      title: RichText(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: '${utils.objects[index].nombre} \n',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(
                              text: utils.objects[index].cel,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        utils.objects[index].direccion,
                        style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () async {
                          final result = await confirmationDialog(context);
                          if (result != null && result) {
                            utils.deleteObject(index);
                          }
                        },
                        icon: const Icon(
                          Icons.delete,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  
}
