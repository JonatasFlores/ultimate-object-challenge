//ORGANIZAR TODAS AS ATIVIDADES NESTE LOCAL DESDE SUA CRIAÇÃO ATÉ O LOCAL
//ONDE FICARÁ SALVO

import 'package:final_challenge/interface/home_page_interface.dart';
import 'package:final_challenge/utils/allTasks.dart';
import 'package:final_challenge/utils/read.dart';
import 'dart:io';

import 'new_task.dart';

class MyTask implements PageInterface {
  @override
  void init() {
    if (allTasks.isEmpty) {
      print('Empty Task Organizer');
      final result = Read.readString(message: 'Want to add a task? Y/N');
      if (result == 'y' || result == 'Y') {
        NewTask().init();
      }
    } else {}
  }
}
