import 'package:chicken_admin/presentation/widgets/client_search.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  static const name = 'client';

  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ClientSearch(),
      ),
    );
  }
}


