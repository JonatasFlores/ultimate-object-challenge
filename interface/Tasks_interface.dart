abstract class TaskInterface {
  late String title; //TÍTULO
  late String startDate; //DATA DE INÍCIO
  late String completionDate; //DATA DE TÉRMINO
  late String place; //LOCAL
  late String description; //DESCRIÇÃO
  bool finished = false; //STATUS DA ATIVIDADE

  void finish() {}

  void showActivity() {}
}
