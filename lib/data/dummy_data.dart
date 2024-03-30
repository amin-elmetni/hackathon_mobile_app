import 'package:flutter/material.dart';
import 'package:hackathon_project/models/hotel.dart';
import 'package:hackathon_project/models/place.dart';
import 'package:hackathon_project/models/restaurant.dart';

const String placesImagesPath = 'assets/images/places/';
const String hotelsImagesPath = 'assets/images/hotels/';
const String restaurantsImagesPath = 'assets/images/restaurants/';

enum Country {
  morocco,
}

enum City {
  tetouan,
}

//INFO : List of places types (activies)
var placesTypes = {
  PlaceType.snorkling.name: "snorkling.png",
  PlaceType.biking.name: "biking.png",
  PlaceType.cinema.name: "cinema.png",
  PlaceType.hiking.name: "hiking.png",
  PlaceType.horsing.name: "horsing.png",
  // PlaceType.historical.name: "historical.png",
  // PlaceType.nature.name: "nature.png",
  // PlaceType.park.name: "park.png",
  // PlaceType.playGround.name: "playGround.png",
};

//INFO : List of places
List<Place> dummyPlaces = [
  Place(
    name: "Fedan",
    description: "Explore the vibrant city nightlife.",
    image: '${placesImagesPath}fedan.jpg',
    type: PlaceType.park,
    country: Country.morocco,
    city: City.tetouan,
    address: '9 Av. Alger, Tétouan 93000',
    rating: 4.2,
  ),
  Place(
    name: "Bab Okla",
    description: "Step back in time and explore ancient ruins.",
    image: '${placesImagesPath}bab_okla.jpg',
    type: PlaceType.historical,
    country: Country.morocco,
    city: City.tetouan,
    address: 'HJ9P+QQG, Av. des Forces Armées Royales, Tétouan',
    rating: 4.7,
  ),
  Place(
    name: "Iglesia",
    description: "A church that considered as monument in Tetouan.",
    image: '${placesImagesPath}iglesia.jpg',
    type: PlaceType.historical,
    country: Country.morocco,
    city: City.tetouan,
    address: 'HJCG+223, Pl. Moulay El Mehdi, Tétouan',
    rating: 4.4,
  ),
  Place(
    name: "Hamama",
    description:
        "A sculpture of a white pigeon that represents a distinctive sign of Tetouan city",
    image: '${placesImagesPath}hamama.jpg',
    type: PlaceType.historical,
    country: Country.morocco,
    city: City.tetouan,
    address: 'Boulevard Hassan II, Tetouan',
    rating: 4.8,
  ),
];

//INFO : List of hotels
List<Hotel> dummyHotels = [
  Hotel(
    name: 'Blanco Riad',
    amenities: [
      '${const Icon(Icons.coffee)} Free breakfast',
      '${const Icon(Icons.wifi)} Free WiFi',
      '${const Icon(Icons.spa)} Spa',
      '${const Icon(Icons.air)} Air conditioning',
      '${const Icon(Icons.restaurant)} Reastaurant',
    ],
    image: '${hotelsImagesPath}blanco.png',
    price: 1034,
    stars: 3,
    country: Country.morocco,
    city: City.tetouan,
    address: '25 Rue Zawiya Kadiria, Tetouan, 93000',
    rating: 4.5,
  ),
  Hotel(
    name: 'El Reducto',
    amenities: [
      '${const Icon(Icons.coffee)} Free breakfast',
      '${const Icon(Icons.wifi)} Free WiFi',
      '${const Icon(Icons.spa)} Spa',
      '${const Icon(Icons.air)} Air conditioning',
      '${const Icon(Icons.restaurant)} Reastaurant',
    ],
    image: '${hotelsImagesPath}reducto.png',
    price: 640,
    stars: 4,
    country: Country.morocco,
    city: City.tetouan,
    address: 'Essaid Zanqat Zawya Kadiriya, Nº 38, Tetouan, 93000',
    rating: 4.3,
  ),
  Hotel(
    name: 'Atenas',
    amenities: [
      '${const Icon(Icons.coffee)} Free breakfast',
      '${const Icon(Icons.wifi)} Free WiFi',
      '${const Icon(Icons.spa)} Spa',
      '${const Icon(Icons.air)} Air conditioning',
      '${const Icon(Icons.restaurant)} Reastaurant',
    ],
    image: '${hotelsImagesPath}atenas.png',
    price: 773,
    stars: 3,
    country: Country.morocco,
    city: City.tetouan,
    address: 'Boulevard Allal Ben Abdellah, Tetouan, 93000',
    rating: 4.5,
  ),
  Hotel(
    name: 'Prestige',
    amenities: [
      '${const Icon(Icons.coffee)} Free breakfast',
      '${const Icon(Icons.wifi)} Free WiFi',
      '${const Icon(Icons.spa)} Spa',
      '${const Icon(Icons.air)} Air conditioning',
      '${const Icon(Icons.restaurant)} Reastaurant',
    ],
    image: '${hotelsImagesPath}prestige.png',
    price: 686,
    stars: 3,
    country: Country.morocco,
    city: City.tetouan,
    address: 'Avenue 9 Avril, Tetouan, 93000',
    rating: 4.5,
  ),
];

//INFO : List of hotels
List<Restaurant> dummyrestaurants = [
  Restaurant(
    name: 'Diamond',
    description: 'Moroccan, Mediterranean, Healthy, Arabic',
    type: RestaurantType.pricey,
    image: '${restaurantsImagesPath}diamond.jpg',
    country: Country.morocco,
    city: City.tetouan,
    address: '27, Avenue Hassan II, Tetouan 93000 Morocco',
    rating: 4.5,
  ),
  Restaurant(
    name: 'Khay Hmed',
    description: 'Moroccan, Seafood, Fast Food',
    type: RestaurantType.affordable,
    image: '${restaurantsImagesPath}khay_hmed.jpg',
    country: Country.morocco,
    city: City.tetouan,
    address:
        '1 Avenue Salah Eddin Al Ayoubi, Larache, Marruecos, Larache 92000 Morocco',
    rating: 4.0,
  ),
  Restaurant(
    name: 'Merican',
    description: 'Seafood',
    type: RestaurantType.pricey,
    image: '${restaurantsImagesPath}merican.jpg',
    country: Country.morocco,
    city: City.tetouan,
    address: 'N16, Tetouan Morocco',
    rating: 4.0,
  ),
  Restaurant(
    name: 'Fuji Sushi',
    description: 'Japanese',
    type: RestaurantType.luxurious,
    image: '${restaurantsImagesPath}fuji_sushi.jpg',
    country: Country.morocco,
    city: City.tetouan,
    address: 'Bloc 2 N5 Av de Caire Wilaya Center, Tetouan 93000 Morocco',
    rating: 4.5,
  ),
];
