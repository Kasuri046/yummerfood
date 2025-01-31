//Restaurents Data
class RestaurentModel {
  final String title;
  final String text1;
  final String text2;
  final String text3;

  RestaurentModel({
    required this.title,
    required this.text1,
    required this.text2,
    required this.text3,
  });
}

List<RestaurentModel> favouriteModels = [
  RestaurentModel(title: 'ChickenTaste', text1: 'Bakery', text2: '5.0 - ', text3: '0.2 km - \$\$'),
  RestaurentModel(title: 'Pizza Palace', text1: 'Italian', text2: '4.5 - ', text3: '1.0 km - \$'),
  RestaurentModel(title: 'Sushi World', text1: 'Japanese', text2: '4.8 - ', text3: '0.5 km - \$\$'),
  RestaurentModel(title: 'Burger Hub', text1: 'Fast Food', text2: '4.0 - ', text3: '2.0 km - \$'),
  RestaurentModel(title: 'Taco Town', text1: 'Mexican', text2: '4.3 - ', text3: '3.0 km - \$\$'),
  RestaurentModel(title: 'Pasta Place', text1: 'Italian', text2: '4.7 - ', text3: '1.5 km - \$\$'),
  RestaurentModel(title: 'Salad Station', text1: 'Healthy', text2: '4.2 - ', text3: '2.5 km - \$'),
  RestaurentModel(title: 'Dessert Delight', text1: 'Sweets', text2: '5.0 - ', text3: '0.8 km - \$\$'),
  RestaurentModel(title: 'Coffee Corner', text1: 'Cafeteria', text2: '4.6 - ', text3: '1.2 km - \$'),
  RestaurentModel(title: 'Smoothie Spot', text1: 'Drinks', text2: '4.4 - ', text3: '0.3 km - \$'),
];

//Food Data
class FoodModel {
  final String name;
  final String description;
  final String price;
  final String calories;

  FoodModel({
    required this.name,
    required this.description,
    required this.price,
    required this.calories,
  });
}

List<FoodModel> foodItems = [
  FoodModel(name: 'Margherita Pizza', description: 'Classic cheese and tomato', price: '\$12.99', calories: '250 kcal'),
  FoodModel(name: 'Caesar Salad', description: 'Fresh greens dressing', price: '\$9.99', calories: '150 kcal'),
  FoodModel(name: 'Spaghetti Carbonara', description: 'Pasta with sauce and pancetta', price: '\$14.99', calories: '600 kcal'),
  FoodModel(name: 'Chicken Tikka Masala', description: 'Spicy chicken in creamy sauce', price: '\$13.99', calories: '500 kcal'),
  FoodModel(name: 'Vegetable Stir Fry', description: 'Mixed vegetables in soy sauce', price: '\$10.99', calories: '200 kcal'),
  FoodModel(name: 'Chocolate Cake', description: 'Rich chocolate cake with icing', price: '\$6.99', calories: '400 kcal'),
  FoodModel(name: 'Ice Cream Sundae', description: 'Vanilla with chocolate syrup', price: '\$5.99', calories: '300 kcal'),
  FoodModel(name: 'Beef Tacos', description: 'Tacos filled with beef', price: '\$8.99', calories: '350 kcal'),
  FoodModel(name: 'Shrimp Fried Rice', description: 'Rice stir-fried and veggies', price: '\$11.99', calories: '450 kcal'),
  FoodModel(name: 'Pancakes', description: 'Fluffy pancakes', price: '\$7.99', calories: '350 kcal'),
];
