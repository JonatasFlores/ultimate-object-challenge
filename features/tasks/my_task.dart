//ORGANIZAR TODAS AS ATIVIDADES NESTE LOCAL DESDE SUA CRIAÇÃO ATÉ O LOCAL
//ONDE FICARÁ SALVO

import 'package:final_challenge/interface/Tasks_interface.dart';
import 'package:final_challenge/interface/home_page_interface.dart';
import 'package:final_challenge/models/meet_task_model.dart';
import 'package:final_challenge/models/others_task_model.dart';
import 'package:final_challenge/models/travel_task_model.dart';
import 'package:final_challenge/models/work_task_model.dart';
import 'package:final_challenge/utils/allTasks.dart';
import 'package:final_challenge/utils/clean.dart';
import 'package:final_challenge/utils/read.dart';
import 'dart:io';

import '../home.dart';
import 'new_task.dart';

class MyTask implements PageInterface {
  @override
  void init() {
    Clean.screen();
    if (allTasks.isEmpty) {
      print('Empty Task Organizer');
      final result = Read.readString(message: 'Want to add a task? Y/N');
      if (result == 'y' || result == 'Y') {
        NewTask().init();
      }
    } else {
      for (int i = 0; i < allTasks.length; i++) {
        final task = allTasks[i];
        _showTitle(task, i + 1);
        if (task is MeetTaskModel) {
          _meetInfo(task);
        }
        if (task is WorkTaskModel) {
          _workInfo(task);
        }
        if (task is OtherTaskModel) {
          _otherInfo(task);
        }
        if (task is TravelTaskModel) {
          _travelInfo(task);
        }
      }
    }
    Read.readString(message: "Click to return to home menu.");
    Clean.screen();
    Home().init();
  }

  void _showTitle(TaskInterface task, int index) {
    Clean.screen();
    print('Código: $index');
    print('Titulo: ${task.title}');
    print('Descrição: ${task.description}');
    print('Status: ${task.finished ? "| Finished |" : "| In process.. |"}');
  }

  void _meetInfo(MeetTaskModel task) {
    print('Meeting Task');
    print('Start Day: ${task.startDate}');
    print('Completion Day ${task.completionDate}');
    print('Place: ${task.place}');
  }

  void _workInfo(WorkTaskModel task) {
    print('Meeting Task');
    print('Start Day: ${task.startDate}');
    print('Completion Day ${task.completionDate}');
    print('Place: ${task.place}');
  }

  void _otherInfo(OtherTaskModel task) {
    print('Meeting Task');
    print('Start Day: ${task.startDate}');
    print('Completion Day ${task.completionDate}');
    print('Place: ${task.place}');
  }

  void _travelInfo(TravelTaskModel task) {
    print('Meeting Task');
    print('Start Day: ${task.startDate}');
    print('Completion Day ${task.completionDate}');
    print('Place: ${task.place}');
  }
}
