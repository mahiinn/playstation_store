class Category {
  final String name;
  final String icon;

  Category({required this.name, required this.icon});
}

final List<Category> categories = [
  Category(name: 'Action', icon: 'assets/icons/action.svg'),
  Category(name: 'Adventure', icon: 'assets/icons/adventure.svg'),
  Category(name: 'Sport', icon: 'assets/icons/sport.svg'),
  Category(name: 'Strategy', icon: 'assets/icons/strategy.svg'),
  Category(name: 'Arcade', icon: 'assets/icons/arcade.svg'),
  Category(name: 'Musical', icon: 'assets/icons/music.svg'),
  Category(name: 'More', icon: 'assets/icons/more-vertical.svg'),
];
