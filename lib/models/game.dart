import 'category.dart';

class Game {
  final int? id;
  final String? cover, hero, description, name;
  final List<String?> screenshotImages;
  final Category category;
  final double? price;
  final List<GameReviews> reviews;
  final bool isPopular, hasDiscount;

  const Game(
      {required this.id,
      required this.cover,
      required this.hero,
      required this.screenshotImages,
      required this.name,
      required this.category,
      required this.price,
      required this.description,
      required this.reviews,
      required this.isPopular,
      required this.hasDiscount});
}

class GameReviews {
  final String? avatar;
  final DateTime? date;
  final String? description;

  const GameReviews({this.avatar, this.date, this.description});
}

// Sample data
final games = <Game>[
  Game(
      id: 0,
      cover: 'assets/images/covers/horizon.webp',
      hero: 'assets/images/heros/horizon.jpg',
      screenshotImages: [
        'assets/images/heros/horizon.jpg',
        'assets/images/heros/horizon-forbidden-west.jpg',
        'assets/images/heros/horizon-forbidden-west-01.jpg'
      ],
      name: 'Horizon Forbidden West',
      category: categories[0],
      price: 29.99,
      description:
          "Horizon 2: Forbbiden West es la segunda parte de Horizon: Zero Dawn, el videojuego de acción en tercera persona y mundo abierto de Guerrilla Games para PlayStation 5 en exclusiva. Auspiciado por Sony, y como una de las nuevas sagas que han demostrado su poder y presencia en la sobremesa, nos narrará una épica historia de ciencia ficción postapocalíptica en la que la humanidad intenta sobrevivir tras la aparición de una serie de máquinas y robots que han sustituido a los seres vivos como especie dominante en la Tierra.",
      reviews: [
        GameReviews(
          avatar: 'mahii',
          date: DateTime(2023, 4, 28, 7, 0, 0),
          description:
              'Plainly put, Sniper Elite 5 not only managed to meet my expectations but far surpass them',
        )
      ],
      isPopular: true,
      hasDiscount: true),
  Game(
      id: 1,
      cover: 'assets/images/covers/diabloiv.jpg',
      hero: 'assets/images/heros/diabloiv.jpg',
      screenshotImages: [
        'assets/images/heros/diabloiv.jpg',
        'assets/images/heros/diablo-4-01.jpg',
        'assets/images/heros/diablo-4-02.jpg'
      ],
      name: 'Diablo IV',
      category: categories[0],
      price: 69.99,
      description:
          'Diablo 4 es la cuarta entrega de la saga de acción y rol de Blizzard, toda una institución del mundo del videojuego. En esta ocasión volverá a sus raíces, presentándonos un mundo de terror gótico y de fantasía oscura, devolviéndonos la lucha constante contra los demonios y las criaturas que se esconden en el inframundo. Con varias clases y un sistema de loot revisado, llegará a Xbox One, PS4 y PC.',
      reviews: [
        GameReviews(
          avatar: 'blackpan',
          date: DateTime(2023, 4, 28, 7, 0, 0),
          description: 'Very good',
        )
      ],
      isPopular: true,
      hasDiscount: false),
  Game(
      id: 2,
      cover: 'assets/images/covers/diabloiv.jpg',
      hero: 'assets/images/heros/diabloiv.jpg',
      screenshotImages: [
        'assets/images/heros/diablo-4-01.jpg',
        'assets/images/heros/diablo-4-02.jpg'
      ],
      name: 'Diablo IV',
      category: categories[0],
      price: 69.99,
      description:
          'Diablo 4 es la cuarta entrega de la saga de acción y rol de Blizzard, toda una institución del mundo del videojuego. En esta ocasión volverá a sus raíces, presentándonos un mundo de terror gótico y de fantasía oscura, devolviéndonos la lucha constante contra los demonios y las criaturas que se esconden en el inframundo. Con varias clases y un sistema de loot revisado, llegará a Xbox One, PS4 y PC.',
      reviews: [
        GameReviews(
          avatar: 'blackpan',
          date: DateTime(2023, 4, 28, 7, 0, 0),
          description: 'Very good',
        )
      ],
      isPopular: true,
      hasDiscount: false),
  Game(
      id: 3,
      cover: 'assets/images/covers/horizon.webp',
      hero: 'assets/images/heros/horizon.jpg',
      screenshotImages: [
        'assets/images/heros/horizon-forbidden-west.jpg',
        'assets/images/heros/horizon-forbidden-west01.jpg'
      ],
      name: 'Horizon Forbidden West',
      category: categories[0],
      price: 29.99,
      description:
          "Horizon 2: Forbbiden West es la segunda parte de Horizon: Zero Dawn, el videojuego de acción en tercera persona y mundo abierto de Guerrilla Games para PlayStation 5 en exclusiva. Auspiciado por Sony, y como una de las nuevas sagas que han demostrado su poder y presencia en la sobremesa, nos narrará una épica historia de ciencia ficción postapocalíptica en la que la humanidad intenta sobrevivir tras la aparición de una serie de máquinas y robots que han sustituido a los seres vivos como especie dominante en la Tierra.",
      reviews: [
        GameReviews(
          avatar: 'mahii',
          date: DateTime(2023, 4, 28, 7, 0, 0),
          description:
              'Plainly put, Sniper Elite 5 not only managed to meet my expectations but far surpass them',
        )
      ],
      isPopular: true,
      hasDiscount: true)
];

class GameService {
  static final GameService _GameService = GameService._internal();

  factory GameService() {
    return _GameService;
  }

  GameService._internal();

  List<Game> getPopularGame() {
    return [games[0], games[1]];
  }

  List<Game> getNewestGame() {
    return [games[1]];
  }
}
// final games = <Game>[
//   Game(
//       image: 'assets/img/Game1.png',
//       name: 'Sniper Elite 5',
//       price: '12500',
//       category: 'Accion',
//       description:
//           'Sniper Elite 5, la nueva entrega de la galardonada franquicia, ofrece una experiencia sin parangón a la hora de disparar con un fusil de francotirador. Su combate táctico en tercera persona y su cámara de muertes mejorada te permitirán luchar en los mapas más inmersivos que hayamos hecho nunca, con multitud de ubicaciones del mundo real capturadas hasta el más mínimo detalle y un sistema transversal mejorado que te permitirá explorarlos más que nunca.',
//       reviews: [
//         GameReviews(
//           avatar: 'mahii',
//           date: DateTime(2023, 4, 28, 7, 0, 0),
//           description:
//               'Plainly put, Sniper Elite 5 not only managed to meet my expectations but far surpass them',
//         )
//       ]),
//   Game(
//       image: 'assets/img/Game2.png',
//       name: 'MotoGP22',
//       price: '10500',
//       category: 'Sport',
//       description:
//           'Motores en marcha: arranca el videojuego con la experiencia más inmersiva y auténtica de MotoGP™ de la historia.',
//       reviews: [
//         GameReviews(
//           avatar: 'blackpan',
//           date: DateTime(2023, 4, 28, 7, 0, 0),
//           description: 'Very good',
//         )
//       ]),
//   Game(
//       image: 'assets/img/Game3.png',
//       name: 'WWE 2K22',
//       price: '10500',
//       category: 'Sport',
//       description:
//           'Pegar con tanta fuerza nunca ha sido tan fácil. Lo rediseñamos todo, desde los controles a los gráficos, para que la sensación sea la misma que estar al pie del ring en un WrestleMania.',
//       reviews: [
//         GameReviews(
//           avatar: 'blackpan',
//           date: DateTime(2023, 4, 28, 7, 0, 0),
//           description: 'Very good',
//         )
//       ]),
//   Game(
//       image: 'assets/img/Game4.png',
//       name: 'Tom Clancys Rainbow Six',
//       price: '10500',
//       category: 'Stratedy',
//       description:
//           'Shooter de élite, táctico y realista, basado en equipos, donde triunfan la planificación y ejecución superiores.',
//       reviews: [
//         GameReviews(
//           avatar: 'blackpan',
//           date: DateTime(2023, 4, 28, 7, 0, 0),
//           description: 'Very good',
//         )
//       ]),
//   Game(
//       image: 'assets/img/Game5.png',
//       name: 'Monster Energy Supercross 5',
//       price: '12500',
//       category: 'Sport',
//       description:
//           'Agárrate fuerte del manubrio de tu moto porque al fin llegó un nuevo capítulo de la serie.',
//       reviews: [
//         GameReviews(
//           avatar: 'mahii',
//           date: DateTime(2023, 4, 28, 7, 0, 0),
//           description:
//               'Plainly put, Sniper Elite 5 not only managed to meet my expectations but far surpass them',
//         )
//       ]),
//   Game(
//       image: 'assets/img/Game6.png',
//       name: 'Cyberpunk 2077',
//       price: '10500',
//       category: 'Advendture',
//       description:
//           'Es un RPG de aventura y acción de mundo abierto ambientado en el futuro sombrío de Night City, una peligrosa megalópolis obsesionada con el poder, el glamur y la modificación corporal constante.',
//       reviews: [
//         GameReviews(
//           avatar: 'blackpan',
//           date: DateTime(2023, 4, 28, 7, 0, 0),
//           description: 'Very good',
//         )
//       ]),
//   Game(
//       image: 'assets/img/Game7.png',
//       name: 'KungFu Kickball',
//       price: '10500',
//       category: 'Sport',
//       description:
//           'Compite contra tus amigos en un deporte de fantasía en el que se mezclan el fútbol y las películas de acción de kung-fu.',
//       reviews: [
//         GameReviews(
//           avatar: 'blackpan',
//           date: DateTime(2023, 4, 28, 7, 0, 0),
//           description: 'Very good',
//         )
//       ]),
//   Game(
//       image: 'assets/img/Game8.png',
//       name: 'Sifu',
//       price: '10500',
//       category: 'Accion',
//       description:
//           'peleas realista en tercera persona con unas excelentes mecánicas de combate basadas en el kung-fu y acción cinemática de artes marciales que te embarcará en el camino de la venganza.',
//       reviews: [
//         GameReviews(
//           avatar: 'blackpan',
//           date: DateTime(2023, 4, 28, 7, 0, 0),
//           description: 'Very good',
//         )
//       ]),
// ];
