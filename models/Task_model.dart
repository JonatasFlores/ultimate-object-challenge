import 'package:final_challenge/interface/Tasks_interface.dart';

import '../utils/allTasks.dart';

enum TypeActivities {
  meeting,
  event,
  classroom,
  leisure,
  others,
}

class TaskModel implements TaskInterface {
  TaskModel({
    required this.title,
    required this.description,
    required TypeActivities,
    required this.startDate,
    required this.completionDate,
    required this.place,
    required this.finished,
  });

  late TypeActivities typeActivities;
  @override
  String completionDate;

  @override
  String description;

  @override
  bool finished;

  @override
  String place;

  @override
  String startDate;

  @override
  String title;

  @override
  void finish() {
    finished = true;
  }

  @override
  void showActivity() {
    print(allTasks);
  }
}
