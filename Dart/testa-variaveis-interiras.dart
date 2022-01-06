void main() {
  int idade = 2022 - 1994;
  int idade_irmao = idade + 2;
  int idade_avo = (idade + idade_irmao) * 3;

  print('Eu tenho $idade anos');
  print('Meu irmão tem $idade_irmao anos');
  print('Meu avô tem $idade_avo anos');
}
