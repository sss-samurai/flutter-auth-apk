import 'dart:math';

const List<String> carouselImageUrls = [
  'https://graphicsfamily.com/wp-content/uploads/edd/2021/07/Food-Offer-Banner-Design-Template.jpg',
  'https://img.pikbest.com/templates/20240602/food-burger-restaurant-offer-web-banner-design_10587345.jpg!bw700',
  'https://img.pikbest.com/templates/20240602/food-burger-restaurant-special-offer-web-banner_10587321.jpg!w700wp',
  "https://marketplace.canva.com/EAGbO2DbysY/1/0/1600w/canva-yellow-and-red-modern-promotion-burger-banner-oPBs35K2Bi0.jpg",
];
const String profile_dummy =
    "https://www.catholicsingles.com/wp-content/uploads/2020/06/blog-header-3.png";
final List<Map<String, dynamic>> dummyProducts = [
  {
    "title": "Classic Dosa",
    "subtitle": "Crispy and golden",
    "price": 458.5,
    "rating": 3.4,
    "imageUrl": "https://www.pngmart.com/files/23/Food-PNG-Isolated-Pic.png",
    "favorite": Random().nextBool(),
  },
  {
    "title": "Pasta Delight",
    "subtitle": "Italian creamy goodness",
    "price": 458.5,
    "rating": 3.4,
    "imageUrl": "https://www.pngmart.com/files/23/Food-PNG-Transparent.png",
    "favorite": Random().nextBool(),
  },
  {
    "title": "Paneer Tikka",
    "subtitle": "Smoky and spicy",
    "price": 458.5,
    "rating": 3.4,
    "imageUrl": "https://www.pngmart.com/files/23/Food-PNG-Isolated-File.png",
    "favorite": Random().nextBool(),
  },
  {
    "title": "Fruit Bowl",
    "subtitle": "Fresh seasonal fruits",
    "price": 458.5,
    "rating": 3.4,
    "imageUrl": "https://www.pngmart.com/files/23/Food-Transparent-PNG.png",
    "favorite": Random().nextBool(),
  },
  {
    "title": "Veg Burger",
    "subtitle": "Loaded and juicy",
    "price": 458.5,
    "rating": 3.4,
    "imageUrl": "https://www.pngmart.com/files/23/Food-PNG-HD.png",
    "favorite": Random().nextBool(),
  },
  {
    "title": "Butter Chicken",
    "subtitle": "Rich creamy curry",
    "rating": 3.4,
    "imageUrl": "https://www.pngmart.com/files/23/Food-PNG-Clipart.png",
    "favorite": Random().nextBool(),
  },
  {
    "title": "Momos",
    "subtitle": "Steamed and spicy",
    "rating": 3.4,
    "imageUrl": "https://www.pngmart.com/files/23/Food-PNG-Isolated-Image.png",
    "favorite": Random().nextBool(),
  },
  {
    "title": "Sushi Platter",
    "subtitle": "Japanese classic rolls",
    "price": 458.5,
    "rating": 3.4,
    "imageUrl": "https://www.pngmart.com/files/23/Food-PNG-File.png",
    "favorite": Random().nextBool(),
  },
  {
    "title": "Sushi Platter",
    "subtitle": "Japanese classic rolls",
    "price": 458.5,
    "rating": 3.4,
    "imageUrl": "https://www.pngmart.com/files/23/Food-PNG-Free-Download.png",
    "favorite": Random().nextBool(),
  },
];
