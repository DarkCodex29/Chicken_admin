import 'package:flutter/material.dart';

class Client extends ChangeNotifier{
  final int id;
  final String nombre;
  final String cel;
  final String direccion;

  Client({required this.id, required this.nombre, required this.cel, required this.direccion});
}

List<Client> getClientData = [
  Client(id: 0, nombre: 'Juan', cel: '900773840', direccion: 'direccion'),
  Client(id: 1, nombre: 'Pepe', cel: '920773840', direccion: 'direccion'),
  Client(id: 2, nombre: 'Pedro', cel: '950773840', direccion: 'direccion'),
  Client(id: 3, nombre: 'Albert', cel: '911773840', direccion: 'direccion'),
  Client(id: 4, nombre: 'Luis', cel: '900772840', direccion: 'direccion'),
  Client(id: 5, nombre: 'Joel', cel: '900773486', direccion: 'direccion'),
  Client(id: 6, nombre: 'Pamela', cel: '900771450', direccion: 'direccion'),
];