import 'funcao.dart';
import 'dart:io';
import 'dart:convert';

void main() {
  String opcao = "";
  do{
    stdout.write('''
     [1] - Retornar o somatório de todos os valores inteiros divisiveis por 3 e 5
     [0] - Sair do programa
     Escolha uma opção: ''');
    opcao = stdin.readLineSync(encoding: utf8)!;
    switch (opcao){
      case "1":
        stdout.write("Escolha um numero inteiro positivo: ");
        final input = stdin.readLineSync(encoding: utf8)!;
        int? inteiro = int.tryParse(input);
        if(inteiro == null ||  inteiro.isNaN){
          print("Valor inserido inválido");
          break;
        }
        if(inteiro < 0){
          print("Não é permitida a entrada de números negativos");
          break;
        }
        print("O somatório de todos os valores inteiros divisiveis por 3 e 5 do numero "
            "$inteiro é ${somatorio(numero: inteiro)} \n");
        break;
      case "0":
        print("Encerrando o programa");
        break;
      default:
          print("Opção inválida");
          break;
    }
  }while(opcao != "0");
}
