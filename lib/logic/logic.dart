import 'dart:math';
import 'package:parcial/generated/l10n.dart';

num rmedia = 0;
String cadGene = '';
List<String> numGene = [];
String messageMedia = '', messageNumOrden = '';

String media(String cadena) {
  if (cadena != '') {
    List<int> datos = [];
    int sum = 0;
    final splitted = cadena.split(',');

    for (var i = 0; i < splitted.length; i++) {
      datos.add(int.parse(splitted[i]));
      sum += datos[i];
    }
    rmedia = num.parse((sum / datos.length).toStringAsFixed(1));
    return rmedia.toString();
  } else {
    return Labels().labelError;
  }
}

Object numOrden(String cadena) {
  if (cadena != '') {
    List<int> datos = [];
    final splitted = cadena.split(',');
    for (var i = 0; i < splitted.length; i++) {
      datos.add(int.parse(splitted[i]));
    }
    datos.sort();
    return datos;
  } else {
    return Labels().labelError;
  }
}

String numAleat(String cantidad) {
  int valorI, cant;
  cadGene = '';
  if (cantidad != '') {
    cant = int.parse(cantidad);
    for (var i = 0; i < cant; i++) {
      valorI = Random().nextInt(20);
      if (i == cant - 1) {
        cadGene += '$valorI';
      } else {
        cadGene += '$valorI,';
      }
    }
    return cadGene;
  } else {
    return cadGene = '';
  }
}

String pares(String cadena) {
  if (cadena != '') {
    List<int> datos = [];
    final splitted = cadena.split(',');
    for (var i = 0; i < splitted.length; i++) {
      datos.add(int.parse(splitted[i]));
    }
    var num = datos.where((number) => number.isEven);
    num = num.toList()..sort();
    return '${num.length}';
  }
  return Labels().labelError;
}

Object impares(String cadena) {
  if (cadena != '') {
    List<int> datos = [];
    final splitted = cadena.split(',');
    for (var i = 0; i < splitted.length; i++) {
      datos.add(int.parse(splitted[i]));
    }
    var num = datos.where((number) => number.isEven);
    num = num.toList()..sort();
    return num;
  }
  return Labels().labelError;
}

String sum(String cadena) {
  if (cadena != '') {
    List<int> datos = [];
    int sum = 0;
    final splitted = cadena.split(',');
    for (var i = 0; i < splitted.length; i++) {
      datos.add(int.parse(splitted[i]));
      sum += datos[i];
    }
    return '$sum';
  }
  return Labels().labelError;
}
