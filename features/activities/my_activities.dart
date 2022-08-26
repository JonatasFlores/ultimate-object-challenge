//ORGANIZAR TODAS AS ATIVIDADES NESTE LOCAL DESDE SUA CRIAÇÃO ATÉ O LOCAL
//ONDE FICARÁ SALVO

import 'package:final_challenge/interface/home_page_interface.dart';
import 'package:final_challenge/utils/allActivities.dart';
import 'package:final_challenge/utils/read.dart';

class MyActivities implements PageInterface {
  get message => null;

  @override
  void init() {
    if (allActivities.isEmpty) {
      print("Nenhuma Atividade");
      Read.readString(message: 'Deseja criar uma atividade nova? s/n');
      if (message == "s") {}
    }
  }
}
