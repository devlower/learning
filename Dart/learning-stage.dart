// todo programa em Dart deve haver a função main()
void main() {
  // atribuindo uma nova instancia da classe Deck() para uma variável
  var deck = Deck();

  deck.removeCard('Diamonds', 'Ace');
  // printando na tela o deck (utilização da função toString() explicada abaixo)
  print(deck);
}

// classe Deck()
class Deck {
  // criação da variável do tipo LISTA cards que vai receber uma lista de instancias
  // da classe Card()
  List<Card> cards = [];

  // Construtor que vai atribuir para cada instancia de Card() uma 'suit' e uma 'rank'
  Deck() {
    var ranks = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Jack',
      'Queen',
      'King'
    ];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    // loop para atribuir cada 'suit' e 'rank' uma combinação única de carta
    for (var suit in suits) {
      for (var rank in ranks) {
        var card = Card(suit: suit, rank: rank);
        // método para adicionar 'card' na lista 'cards'
        cards.add(card);
      }
    }
  }

  // função toString formata como será a saída do print(deck) (linha 8)
  // dentro da documentação Dart existe um método toString dentro de listas
  // feito para retornar cada item presente na lista em questão
  // sempre quando houve a chamada da função print() a execução vai buscar
  // a função toString() para buscar a formatação desejada, caso contrário
  // a saíde será default
  // card(lista) . toString() -> usando o método da lista dentro da própria
  // função toString()
  toString() {
    return cards.toString();
  }

  // Dart tem uma biblioteca bem populada com funcionalidades prédefinidas
  // toda vez que uma lista é criada, é possível chamar métodos já existentes
  // como por exeplo o shuffle. Para utilizá-lo basta citar a variável que deseja
  // que sofra a mudança . shuffle -> var.shuffle();
  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
    // long form sintax
    // return cards.where((card) {
    // return card.suit == suit;
    // }
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }

  removeCard(String suit, String rank) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }

  //long
  //removeCard(String suit, String rank) {
  //cards.removeWhere((card) {
  // return (card.suit == suit) && (card.rank == rank);
  //});
  //}
}

// classe Card()
class Card {
  // dados da classe Card()
  String suit;
  String rank;

  // construtor para a classe Card(), recebe dois parâmetros obrigatórios
  // definidos no trecho de código (linha 19 até 31)
  // em Dart toda variável deve ser declarada e iniciada
  // a palavra reservada 'required' antes de this.rank
  Card({required this.rank, required this.suit});

  // formatação do print() para a chamada de cada instancia de Card() dentro do Deck()
  toString() {
    return '$rank of $suit';
  }
}
