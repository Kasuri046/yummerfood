class ItemModel {
  final String title;
  final String imagePath;
  ItemModel({required this.title, required this.imagePath});
}

List<ItemModel> items = [
  ItemModel(title: 'Burger', imagePath: 'assets/homepage/Vector.png'),
  ItemModel(title: 'Salads', imagePath: 'assets/homepage/salad.png'),
  ItemModel(title: 'Pizza', imagePath: 'assets/homepage/pizza.png'),
  ItemModel(title: 'Pasta', imagePath: 'assets/homepage/spaghetti.png'),
  ItemModel(title: 'Popcorn', imagePath: 'assets/homepage/Vector.png'),
  ItemModel(title: 'Drinks', imagePath: 'assets/homepage/salad.png'),
  ItemModel(title: 'Juices', imagePath: 'assets/homepage/pizza.png'),
  ItemModel(title: 'Tea', imagePath: 'assets/homepage/spaghetti.png'),
];