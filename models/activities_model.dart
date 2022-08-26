import 'package:final_challenge/interface/activities_interface.dart';

import '../utils/allActivities.dart';

enum TypeActivities {
  meeting,
  event,
  classroom,
  leisure,
  others,
}

class ActivitiesModel implements ActivitiesInterface {
  ActivitiesModel({
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
    print(allActivities);
  }
}
