// Função que retorna a soma dos divisiveis de 3 e 5 que são menores
// que o numero enviado por argumento
int somatorio({required int numero}){
  int sum = 0;
  for(int i = 0; i < numero; i++){
    if(i % 3 == 0 || i % 5 == 0){
      sum += i;
    }
  }
  return sum;
}