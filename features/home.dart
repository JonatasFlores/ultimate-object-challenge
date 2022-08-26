import 'package:final_challenge/features/activities/my_activities.dart';
import 'package:final_challenge/interface/home_page_interface.dart';
import 'package:final_challenge/utils/read.dart';

class Home implements PageInterface {
  @override
  void init() {
    print('Welcome to Activities');
    print('1. My Tasks');
    print('2. New Task');
    print('3. config');
    print('0. LogOut');

    final result = Read.readInt(message: 'Select Option');

    if (result == 1) {
      //MOSTRAR A LISTA DE ATIVIDADES
      MyActivities().init();
    } else if (result == 2) {
      //CRIAR UMA ATIVIDADE
    } else if (result == 3) {
      //TER OPÇÕES DE CONFIGURAÇÕES DE USUÁRIOS EX; ALTERAR SENHA
    } else if (result == 0) {
      //SAIR DA CONTA E IR PARA Á PAGINA DE LOGIN
    } else {
      print('ERROR 404');
    }
  }
}
