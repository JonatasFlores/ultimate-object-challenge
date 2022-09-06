import 'package:final_challenge/features/tasks/my_task.dart';
import 'package:final_challenge/features/tasks/new_task.dart';
import 'package:final_challenge/interface/home_page_interface.dart';
import 'package:final_challenge/utils/read.dart';
import 'dart:io';

import '../utils/clean.dart';

class Home implements PageInterface {
  @override
  void init() {
    Clean.screen;

    print('Welcome to Activities');
    print('1. My Tasks');
    print('2. New Task');
    print('0. LogOut');

    final result = Read.readInt(message: 'Select Option');
    Clean.screen();
    if (result == 1) {
      MyTask().init();
    } else if (result == 2) {
      NewTask().init();
    } else if (result == 0) {
      print('Thanks for using the task organizer');
    } else {
      print('ERROR 404');
      Home().init();
    }
  }
}
