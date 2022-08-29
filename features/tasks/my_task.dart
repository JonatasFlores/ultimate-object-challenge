//ORGANIZAR TODAS AS ATIVIDADES NESTE LOCAL DESDE SUA CRIAÇÃO ATÉ O LOCAL
//ONDE FICARÁ SALVO

import 'package:final_challenge/interface/home_page_interface.dart';
import 'package:final_challenge/utils/allTasks.dart';
import 'package:final_challenge/utils/read.dart';
import 'dart:io';

class MyTask implements PageInterface {
  @override
  void init() {
    if (allTasks.isEmpty) {
      print("Nenhuma Atividade");
      final result = Read.readString(message: 'Want to add a task');
      if (result == "s") {
        print(("New Task"));
      }
    }
  }
}
