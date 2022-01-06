import random


def jogar():

    print('*********************************')
    print('Bem-viado ao jogo de adivinhação!')
    print('*********************************')

    numero_secreto = random.randrange(1, 101)
    total_de_tentarivas = 0
    pontos = 1000

    print('Qual nível de dificuldade?')
    print('(1) Fácil (2) Médio (3) Dificil')

    nivel = int(input('Defina o nível: '))

    if(nivel == 1):
        total_de_tentarivas = 20
    elif(nivel == 2):
        total_de_tentarivas = 10
    else:
        total_de_tentarivas = 5

    # print(numero_secreto)

    for contagem in range(1, total_de_tentarivas + 1):
        print(f'Tentativa {contagem} e {total_de_tentarivas}')
        chute = int(input('Digite um número entre 1 e 100: '))

        print('Você digitou ', chute)

        if(chute < 1 or chute > 100):
            print('Você deve digitar um número entre 1 e 100!')
            continue

        acertou = chute == numero_secreto
        maior = chute > numero_secreto
        menor = chute < numero_secreto

        if(acertou):
            print(f'Você acertou! E fez {pontos} pontos')
            break
        else:
            if(maior):
                print('Você errou! O seu chute foi maior o que o número'
                      'secreto')
            elif(menor):
                print('Você errou! O seu chute foi menor o que o número'
                      'secreto')

            pontos_perdidos = round(abs(numero_secreto - chute) / 3)
            pontos = pontos - pontos_perdidos

    print('Fim do jogo')


if(__name__ == '__main__'):
    jogar()
