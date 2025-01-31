
// All Restuarents
class Restaurant {
  final String name;
  final String category;
  final String distance;
  final String priceRange;
  final String rating;

  Restaurant({
    required this.name,
    required this.category,
    required this.distance,
    required this.priceRange,
    required this.rating,
  });
}

List<Restaurant> allRestaurants = [
  // Burgers
  Restaurant(
    name: 'Burger Kasuri',
    category: 'Burgers',
    distance: '0.2 km',
    priceRange: '- \$\$ -',
    rating: '2.5',
  ),
  Restaurant(
    name: 'Burger Chill',
    category: 'Burgers',
    distance: '1.0 km',
    priceRange: '- \$ -',
    rating: '4.0',
  ),
  Restaurant(
    name: 'Burger Haven',
    category: 'Fast Food',
    distance: '0.5 km',
    priceRange: '- \$\$ -',
    rating: '4.5',
  ),
  Restaurant(
    name: 'Grill & Chill Burgers',
    category: 'Burgers',
    distance: '1.2 km',
    priceRange: '- \$ -',
    rating: '3.8',
  ),
  Restaurant(
    name: 'Classic Burger Joint',
    category: 'Burgers',
    distance: '0.8 km',
    priceRange: '- \$\$ -',
    rating: '4.2',
  ),

  // Salads
  Restaurant(
    name: 'Fresh Greens',
    category: 'Salads',
    distance: '0.3 km',
    priceRange: '- \$ -',
    rating: '4.5',
  ),
  Restaurant(
    name: 'Salad Station',
    category: 'Healthy',
    distance: '0.7 km',
    priceRange: '- \$\$ -',
    rating: '4.2',
  ),
  Restaurant(
    name: 'Garden Delight',
    category: 'Salads',
    distance: '1.1 km',
    priceRange: '- \$ -',
    rating: '3.9',
  ),
  Restaurant(
    name: 'NutriSalad',
    category: 'Health Food',
    distance: '0.4 km',
    priceRange: '- \$\$ -',
    rating: '4.8',
  ),
  Restaurant(
    name: 'The Green Bowl',
    category: 'Salads',
    distance: '0.6 km',
    priceRange: '- \$\$ -',
    rating: '4.0',
  ),

  // Pizza
  Restaurant(
    name: 'Pizzeria Uno',
    category: 'Pizza',
    distance: '0.4 km',
    priceRange: '- \$\$ -',
    rating: '4.5',
  ),
  Restaurant(
    name: 'Pizza Paradise',
    category: 'Italian',
    distance: '1.0 km',
    priceRange: '- \$ -',
    rating: '4.0',
  ),
  Restaurant(
    name: 'Cheesy Crust',
    category: 'Pizza',
    distance: '0.6 km',
    priceRange: '- \$\$ -',
    rating: '4.2',
  ),
  Restaurant(
    name: 'Slice of Heaven',
    category: 'Gourmet Pizza',
    distance: '0.8 km',
    priceRange: '- \$\$ -',
    rating: '4.7',
  ),
  Restaurant(
    name: 'Fast & Fresh Pizza',
    category: 'Fast Food',
    distance: '1.3 km',
    priceRange: '- \$ -',
    rating: '3.9',
  ),

  // Pasta
  Restaurant(
    name: 'Pasta Palace',
    category: 'Italian',
    distance: '0.5 km',
    priceRange: '- \$\$ -',
    rating: '4.6',
  ),
  Restaurant(
    name: 'Noodle Nirvana',
    category: 'Pasta',
    distance: '0.7 km',
    priceRange: '- \$ -',
    rating: '4.2',
  ),
  Restaurant(
    name: 'The Pasta Spot',
    category: 'Italian',
    distance: '1.2 km',
    priceRange: '- \$\$ -',
    rating: '4.4',
  ),
  Restaurant(
    name: 'Al Dente',
    category: 'Gourmet',
    distance: '0.9 km',
    priceRange: '- \$\$ -',
    rating: '4.8',
  ),
  Restaurant(
    name: 'Quick Pasta',
    category: 'Fast Food',
    distance: '1.0 km',
    priceRange: '- \$ -',
    rating: '3.7',
  ),
];


//Burger Restaurent

class BurgerRestaurant {
  final String name;
  final String category;
  final String distance;
  final String priceRange;
  final String rating;

  BurgerRestaurant({
    required this.name,
    required this.category,
    required this.distance,
    required this.priceRange,
    required this.rating,
  });
}

// List of Burger Restaurants
List<BurgerRestaurant> burgerRestaurants = [
  BurgerRestaurant(
    name: 'Burger Kasuri',
    category: 'Burgers',
    distance: '0.2 km',
    priceRange: '- \$\$ -',
    rating: '2.5',
  ),
  BurgerRestaurant(
    name: 'Burger Chill',
    category: 'Burgers',
    distance: '1.0 km',
    priceRange: '- \$ -',
    rating: '4.0',
  ),
  BurgerRestaurant(
    name: 'Burger Haven',
    category: 'Fast Food',
    distance: '0.5 km',
    priceRange: '- \$\$ -',
    rating: '4.5',
  ),
  BurgerRestaurant(
    name: 'Grill & Chill Burgers',
    category: 'Burgers',
    distance: '1.2 km',
    priceRange: '- \$ -',
    rating: '3.8',
  ),
  BurgerRestaurant(
    name: 'Classic Burger Joint',
    category: 'Burgers',
    distance: '0.8 km',
    priceRange: '- \$\$ -',
    rating: '4.2',
  ),
];

//Salad Restaurent

class SaladRestaurant {
  final String name;
  final String category;
  final String distance;
  final String priceRange;
  final String rating;

  SaladRestaurant({
    required this.name,
    required this.category,
    required this.distance,
    required this.priceRange,
    required this.rating,
  });
}

// List of Salad Restaurants
List<SaladRestaurant> saladRestaurants = [
  SaladRestaurant(
    name: 'Fresh Greens',
    category: 'Salads',
    distance: '0.3 km',
    priceRange: '- \$ -',
    rating: '4.5',
  ),
  SaladRestaurant(
    name: 'Salad Station',
    category: 'Healthy Eats',
    distance: '1.0 km',
    priceRange: '- \$\$ -',
    rating: '4.2',
  ),
  SaladRestaurant(
    name: 'The Salad Bar',
    category: 'Salads',
    distance: '0.7 km',
    priceRange: '- \$ -',
    rating: '3.9',
  ),
  SaladRestaurant(
    name: 'Green Delight',
    category: 'Salads',
    distance: '1.5 km',
    priceRange: '- \$\$ -',
    rating: '4.0',
  ),
  SaladRestaurant(
    name: 'NutriSalad',
    category: 'Healthy Eats',
    distance: '0.4 km',
    priceRange: '- \$ -',
    rating: '4.7',
  ),
];

// Pizza Restaurant

class PizzaRestaurant {
  final String name;
  final String category;
  final String distance;
  final String priceRange;
  final String rating;

  PizzaRestaurant({
    required this.name,
    required this.category,
    required this.distance,
    required this.priceRange,
    required this.rating,
  });
}

// List of Pizza Restaurants
List<PizzaRestaurant> pizzaRestaurants = [
  PizzaRestaurant(
    name: 'Pizza Paradise',
    category: 'Pizzas',
    distance: '0.5 km',
    priceRange: '- \$\$ -',
    rating: '4.6',
  ),
  PizzaRestaurant(
    name: 'Slice of Heaven',
    category: 'Pizzas',
    distance: '1.0 km',
    priceRange: '- \$ -',
    rating: '4.3',
  ),
  PizzaRestaurant(
    name: 'Cheesy Crust',
    category: 'Pizzas',
    distance: '0.8 km',
    priceRange: '- \$\$ -',
    rating: '4.1',
  ),
  PizzaRestaurant(
    name: 'Pepperoni Palace',
    category: 'Pizzas',
    distance: '1.3 km',
    priceRange: '- \$ -',
    rating: '3.8',
  ),
  PizzaRestaurant(
    name: 'The Pizza Joint',
    category: 'Pizzas',
    distance: '0.6 km',
    priceRange: '- \$\$ -',
    rating: '4.4',
  ),
];

//Pasta Model

class PastaRestaurant {
  final String name;
  final String category;
  final String distance;
  final String priceRange;
  final String rating;

  PastaRestaurant({
    required this.name,
    required this.category,
    required this.distance,
    required this.priceRange,
    required this.rating,
  });
}

// List of Pasta Restaurants
List<PastaRestaurant> pastaRestaurants = [
  PastaRestaurant(
    name: 'Pasta Perfection',
    category: 'Italian',
    distance: '0.4 km',
    priceRange: '- \$\$ -',
    rating: '4.5',
  ),
  PastaRestaurant(
    name: 'Noodle Nook',
    category: 'Pasta',
    distance: '1.1 km',
    priceRange: '- \$ -',
    rating: '4.2',
  ),
  PastaRestaurant(
    name: 'Al Dente Delights',
    category: 'Italian',
    distance: '0.7 km',
    priceRange: '- \$\$ -',
    rating: '4.3',
  ),
  PastaRestaurant(
    name: 'The Pasta Place',
    category: 'Pasta',
    distance: '1.3 km',
    priceRange: '- \$ -',
    rating: '3.9',
  ),
  PastaRestaurant(
    name: 'Pasta Bistro',
    category: 'Italian',
    distance: '0.6 km',
    priceRange: '- \$\$ -',
    rating: '4.4',
  ),
];

//Popcorn


class PopcornRestaurant {
  final String name;
  final String category;
  final String distance;
  final String priceRange;
  final String rating;

  PopcornRestaurant({
    required this.name,
    required this.category,
    required this.distance,
    required this.priceRange,
    required this.rating,
  });
}

// List of Popcorn Restaurants
List<PopcornRestaurant> popcornRestaurants = [
  PopcornRestaurant(
    name: 'Popcorn Palace',
    category: 'Snacks',
    distance: '0.3 km',
    priceRange: '- \$ -',
    rating: '4.6',
  ),
  PopcornRestaurant(
    name: 'The Popcorn Shop',
    category: 'Snacks',
    distance: '0.8 km',
    priceRange: '- \$\$ -',
    rating: '4.2',
  ),
  PopcornRestaurant(
    name: 'Crunchy Corn',
    category: 'Snacks',
    distance: '1.0 km',
    priceRange: '- \$ -',
    rating: '4.0',
  ),
  PopcornRestaurant(
    name: 'Gourmet Popcorn Co.',
    category: 'Gourmet Snacks',
    distance: '1.5 km',
    priceRange: '- \$\$ -',
    rating: '4.4',
  ),
  PopcornRestaurant(
    name: 'Sweet & Salty Popcorn',
    category: 'Snacks',
    distance: '0.6 km',
    priceRange: '- \$ -',
    rating: '4.1',
  ),
];


// Drinks Restaurant

class DrinksRestaurant {
  final String name;
  final String category;
  final String distance;
  final String priceRange;
  final String rating;

  DrinksRestaurant({
    required this.name,
    required this.category,
    required this.distance,
    required this.priceRange,
    required this.rating,
  });
}

// List of Drinks Restaurants
List<DrinksRestaurant> drinksRestaurants = [
  DrinksRestaurant(
    name: 'Beverage Bliss',
    category: 'Juices',
    distance: '0.5 km',
    priceRange: '- \$ -',
    rating: '4.7',
  ),
  DrinksRestaurant(
    name: 'Smoothie Station',
    category: 'Smoothies',
    distance: '1.0 km',
    priceRange: '- \$\$ -',
    rating: '4.5',
  ),
  DrinksRestaurant(
    name: 'Tea & Coffee Haven',
    category: 'Café',
    distance: '0.4 km',
    priceRange: '- \$ -',
    rating: '4.3',
  ),
  DrinksRestaurant(
    name: 'The Cocktail Lounge',
    category: 'Cocktails',
    distance: '1.2 km',
    priceRange: '- \$\$ -',
    rating: '4.6',
  ),
  DrinksRestaurant(
    name: 'Soda Shop',
    category: 'Sodas',
    distance: '0.8 km',
    priceRange: '- \$ -',
    rating: '4.1',
  ),
];


//Juices Model

class JuiceRestaurant {
  final String name;
  final String category;
  final String distance;
  final String priceRange;
  final String rating;

  JuiceRestaurant({
    required this.name,
    required this.category,
    required this.distance,
    required this.priceRange,
    required this.rating,
  });
}

// List of Juice Restaurants
List<JuiceRestaurant> juiceRestaurants = [
  JuiceRestaurant(
    name: 'Fresh Juice Co.',
    category: 'Juices',
    distance: '0.3 km',
    priceRange: '- \$ -',
    rating: '4.8',
  ),
  JuiceRestaurant(
    name: 'Juice Bar Delight',
    category: 'Smoothies & Juices',
    distance: '0.6 km',
    priceRange: '- \$\$ -',
    rating: '4.5',
  ),
  JuiceRestaurant(
    name: 'The Juice Spot',
    category: 'Cold Pressed Juices',
    distance: '0.9 km',
    priceRange: '- \$ -',
    rating: '4.6',
  ),
  JuiceRestaurant(
    name: 'Vitamin Sea Juices',
    category: 'Healthy Drinks',
    distance: '1.1 km',
    priceRange: '- \$\$ -',
    rating: '4.7',
  ),
  JuiceRestaurant(
    name: 'Tropical Juice Bar',
    category: 'Exotic Juices',
    distance: '0.5 km',
    priceRange: '- \$ -',
    rating: '4.4',
  ),
];

//Tea Model

class TeaRestaurant {
  final String name;
  final String category;
  final String distance;
  final String priceRange;
  final String rating;

  TeaRestaurant({
    required this.name,
    required this.category,
    required this.distance,
    required this.priceRange,
    required this.rating,
  });
}

// List of Tea Restaurants
List<TeaRestaurant> teaRestaurants = [
  TeaRestaurant(
    name: 'Tea Time Café',
    category: 'Café',
    distance: '0.4 km',
    priceRange: '- \$ -',
    rating: '4.6',
  ),
  TeaRestaurant(
    name: 'Herbal Haven',
    category: 'Herbal Teas',
    distance: '0.7 km',
    priceRange: '- \$\$ -',
    rating: '4.5',
  ),
  TeaRestaurant(
    name: 'The Tea House',
    category: 'Specialty Teas',
    distance: '1.0 km',
    priceRange: '- \$ -',
    rating: '4.4',
  ),
  TeaRestaurant(
    name: 'Chai Corner',
    category: 'Chai & Spices',
    distance: '1.2 km',
    priceRange: '- \$ -',
    rating: '4.3',
  ),
  TeaRestaurant(
    name: 'Matcha Magic',
    category: 'Matcha Drinks',
    distance: '0.6 km',
    priceRange: '- \$\$ -',
    rating: '4.8',
  ),
];

