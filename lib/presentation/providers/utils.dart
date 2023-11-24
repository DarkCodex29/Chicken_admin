import 'package:flutter/material.dart';

class UtilsProvider<T> extends ChangeNotifier {
  List<T> filteredObjects = [];
  List<T> objects = [];
  bool isFilled = false;

  void listaInicial(List<T> initialObjects) {
    if (!isFilled) {
      // Guarda la lista original en la copia de seguridad
      filteredObjects.clear();
      filteredObjects.addAll(initialObjects);

      // Inicializa la lista objects
      objects.clear();
      objects.addAll(initialObjects);

      isFilled = true;
    }
  }
/*
  void restoreOriginalList() {
    objects.clear();
    objects.addAll(filteredObjects);
    notifyListeners();
  }*/

void searchObject(String searchText, String Function(T) getName) {
  if (searchText.isEmpty) {
    filteredObjects.clear();
    filteredObjects.addAll(objects);
  } else {
    final filtroObjects = objects
        .where((obj) =>
            getName(obj).toLowerCase().contains(searchText.toLowerCase()))
        .toList();
    filteredObjects.clear();
    filteredObjects.addAll(filtroObjects);
  }
  notifyListeners();
}


  void editObject(int index, T newObject) {
    if (index >= 0 && index < objects.length) {
      objects[index] = newObject;
      notifyListeners();
    }
  }

  void addObject(T newObject) {
    objects.add(newObject);
    notifyListeners();
  }

  void deleteObject(int index) {
    if (index >= 0 && index < objects.length) {
      objects.removeAt(index);
      notifyListeners();
    }
  }
}
