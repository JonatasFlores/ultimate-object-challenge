//CRIAR AS ATIVIDADES E SALVAR NA LISTA

import 'dart:io';
import 'package:final_challenge/features/home.dart';
import 'package:final_challenge/features/tasks/my_task.dart';
import 'package:final_challenge/interface/home_page_interface.dart';
import 'package:final_challenge/models/meet_task_model.dart';
import 'package:final_challenge/models/others_task_model.dart';
import 'package:final_challenge/models/travel_task_model.dart';
import 'package:final_challenge/utils/allTasks.dart';
import 'package:final_challenge/utils/clean.dart';
import 'package:final_challenge/utils/read.dart';

class NewTask implements PageInterface {
  @override
  void init() {
    Clean.screen;

    print('Which task do you want to add?');
    print('1.Meet');
    print('2.Work');
    print('3.Travel');
    print('4.Others');

    final result = Read.readInt(message: 'Select Task Type');

    if (result == 1) {
      final title = Read.readString(message: 'What is the task title? ');
      final description = Read.readString(message: 'Task Description: ');
      final startDate = Read.readString(message: 'Task Start Date: ');
      final completionDate = Read.readString(message: 'Task completion date');
      final place = Read.readString(message: 'Place: ');
      Clean.screen();
      final meetingTask = MeetTaskModel(
          title: title,
          description: description,
          startDate: startDate,
          completionDate: completionDate,
          place: place,
          finished: false);
      meetingTask.showActivity();
      allTasks.add(meetingTask);

      print('Task Created');

      Clean.screen();

      print('1. back to home page');
      print('2. see my tasks');
      print('3. Exit');
      final response = Read.readInt(message: 'Select Option');
      if (response == 1) {
        Home().init();
      } else if (response == 2) {
        MyTask().init();
      } else if (response == 3) {
        print('Thanks for using the task organizer');
      } else {
        print('ERROR 404');
      }

      //

    } else if (result == 2) {
      final title = Read.readString(message: 'What is the task title? ');
      final description = Read.readString(message: 'Task Description: ');
      final startDate = Read.readString(message: 'Task Start Date: ');
      final completionDate = Read.readString(message: 'Task completion date');
      final place = Read.readString(message: 'Place: ');
      Clean.screen();
      final workTask = MeetTaskModel(
          title: title,
          description: description,
          startDate: startDate,
          completionDate: completionDate,
          place: place,
          finished: false);

      workTask.showActivity();
      allTasks.add(workTask);

      print('Task Created');

      Clean.screen();

      print('1. back to home page');
      print('2. see my tasks');
      print('3. Exit');
      final response = Read.readInt(message: 'Select Option');
      if (response == 1) {
        Home().init();
      } else if (response == 2) {
        MyTask().init();
      } else if (response == 3) {
        print('Thanks for using the task organizer');
      } else {
        print('ERROR 404');
      }
      //

    } else if (result == 3) {
      final title = Read.readString(message: 'What is the task title? ');
      final description = Read.readString(message: 'Task Description: ');
      final startDate = Read.readString(message: 'Task Start Date: ');
      final completionDate = Read.readString(message: 'Task completion date');
      final place = Read.readString(message: 'Place: ');
      final travelCost =
          Read.readDouble(message: 'Enter the cost for this trip');
      Clean.screen();
      final travelTask = TravelTaskModel(
          title: title,
          description: description,
          startDate: startDate,
          completionDate: completionDate,
          place: place,
          finished: false,
          travelCost: travelCost);
      travelTask.showActivity();
      allTasks.add(travelTask);

      print('Task Created');

      Clean.screen();

      print('1. back to home page');
      print('2. see my tasks');
      print('3. Exit');
      final response = Read.readInt(message: 'Select Option');
      if (response == 1) {
        Home().init();
      } else if (response == 2) {
        MyTask().init();
      } else if (response == 3) {
        print('Thanks for using the task organizer');
      } else {
        print('ERROR 404');
      }

      //
    } else if (result == 4) {
      final title = Read.readString(message: 'What is the task title? ');
      final description = Read.readString(message: 'Task Description: ');
      final startDate = Read.readString(message: 'Task Start Date: ');
      final completionDate = Read.readString(message: 'Task completion date');
      final place = Read.readString(message: 'Place: ');
      Clean.screen();
      final otherTask = OtherTaskModel(
          title: title,
          description: description,
          startDate: startDate,
          completionDate: completionDate,
          place: place,
          finished: false);
      otherTask.showActivity();
      allTasks.add(otherTask);

      print('Task Created');

      Clean.screen();

      print('1. back to home page');
      print('2. see my tasks');
      print('3. Exit');
      final response = Read.readInt(message: 'Select Option');
      if (response == 1) {
        Home().init();
      } else if (response == 2) {
        MyTask().init();
      } else if (response == 3) {
        print('Thanks for using the task organizer');
      } else {
        print('ERROR 404');
      }

      //
    } else {
      print('ERROR 404');
    }
  }
}
