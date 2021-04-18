import 'dart:async';

import 'package:exemplo_bloc/model/model.dart';
import 'package:flutter/material.dart';

class IMCBloc {

  var heightController = TextEditingController();
  var weightController = TextEditingController();
  var result = 'Preencha os dados para calcular o IMC';

  final _blocController = StreamController<String>();
  
  Stream<String> get myStream => _blocController.stream;

  IMCBloc() {
    _blocController.add(result);
  }
  
  calculate() {
    var imc = Imc(double.parse(heightController.text), double.parse(weightController.text));
    _blocController.add(imc.calculate().toString()); // retorna o valor sem usar return

  }

  void resetFields(){
    heightController.text = '';
    weightController.text = '';
    _blocController.add('');
  }

  void closeStream() {
    _blocController.close(); //sempre importante fechar a stream, pra não consumir memória.
  }
  
}