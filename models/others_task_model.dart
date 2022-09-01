import 'package:final_challenge/interface/Tasks_interface.dart';

class OtherTaskModel implements TaskInterface {
  OtherTaskModel({
    required this.title,
    required this.description,
    required this.startDate,
    required this.completionDate,
    required this.place,
    required this.finished,
  });

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
    print('Título: ${title}');
    print('Descrição: ${description}');
    print('Data de Início: ${startDate}');
    print('Data de finalização: ${completionDate}');
    print('Está Finalizado? ${finished}');
  }
}
