//DELETAR TAREFAS
//FINALIZAR TAREFAS

import 'package:final_challenge/features/home.dart';
import 'package:final_challenge/interface/home_page_interface.dart';
import 'package:final_challenge/utils/read.dart';
import 'dart:io';

class Config implements PageInterface {
  @override
  void init() {
    print('Welecome to the settings');
    print('1. Delete Task');
    print("2. Finish Task");

    final result = Read.readInt(message: 'Select Option');

    if (result == 1) {
      //MOSTRAR TODAS AS ATIVIDADES PARA DECIDIR QUAL PODERÁ SER EXCLUÍDA
    } else if (result == 2) {
      //MOSTRAR TAREFAS EM ABERTO/PENDENTES
    } else {
      print('ERROR 404');
    }

    Home().init();
  }
}
