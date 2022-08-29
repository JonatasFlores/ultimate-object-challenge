//CRIAR AS ATIVIDADES E SALVAR NA LISTA

import 'dart:io';
import 'package:final_challenge/interface/home_page_interface.dart';
import 'package:final_challenge/utils/read.dart';

class NewTask implements PageInterface {
  @override
  void init() {
    print('Which task do you want to add?');
    print("1.Meet\n 2.Work\n 3.Travel\n 4.Others");

    final result = Read.readInt(message: 'Select Task Type');

    if (result == 1) {
      print('reunião');
    } else if (result == 2) {
      print('trabalho');
    } else if (result == 3) {
      print('Viagem');
    } else if (result == 4) {
      print('outros');
    } else {
      print('ERROR 404');
    }
  }
}
