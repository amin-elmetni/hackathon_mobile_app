import 'package:hackathon_project/models/place.dart';

const String placesImagesPath = 'assets/images/places/';

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

List<Place> dummyPlaces = [
  Place(
    name: "Fedan",
    description: "Explore the vibrant city nightlife.",
    image: '${placesImagesPath}fedan.jpg',
    type: PlaceType.park,
    location: "Morocco, Tetouan",
  ),
  Place(
    name: "Bab Okla",
    description: "Step back in time and explore ancient ruins.",
    image: '${placesImagesPath}bab_okla.jpg',
    type: PlaceType.historical,
    location: "Morocco, Tetouan",
  ),
  Place(
    name: "Eglisia",
    description: "A church that considered as monument in Tetouan.",
    image: '${placesImagesPath}eglesia.jpg',
    type: PlaceType.historical,
    location: "Morocco, Tetouan",
  ),
  Place(
    name: "Hamama",
    description:
        "A sculpture of a white pigeon that represents a distinctive sign of Tetouan city",
    image: '${placesImagesPath}hamama.jpg',
    type: PlaceType.historical,
    location: "Morocco, Tetouan",
  ),
];
