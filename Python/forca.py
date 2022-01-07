def jogar():

    print('***************************')
    print('Bem-viado ao jogo de forca!')
    print('***************************')

    palavra_secreta = 'lemniscata'.upper()
    letras_acertadas = ['_' for letra in palavra_secreta]

    enforcou = False
    acertou = False
    erros = 0

    print(letras_acertadas)
    # enquanto(True)
    while(not enforcou and not acertou):

        chute = input('Qual letra? ').upper().strip()

        if(chute in palavra_secreta):
            index = 0
            for letra in palavra_secreta:
                if(chute == letra):
                    # print(f'Encontrei a letra {letra} na posição {index}')
                    letras_acertadas[index] = letra
                index += 1
        else:
            erros += 1
        enforcou = erros == 6
        acertou = '_' not in letras_acertadas
        print(letras_acertadas)
    if(acertou):
        print('Você ganhou')
    else:
        print('Você perdeu')
    print('Fim do jogo')


if(__name__ == '__main__'):
    jogar()
