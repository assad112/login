class Place {
  final String imageUrl;
  final String city;
  final String country;
  final int properties;

  Place({this.imageUrl, this.city, this.country, this.properties});
}

final places = [
  Place(
    imageUrl: 'assets/images/amsterdam.png',
city: 'Salalah',
country: 'Salalah',
properties: 40,
),
Place(
imageUrl: 'assets/images/bangkok.png',
city: 'Al Buraymi',
country: 'Al Buraymi',
properties: 32,
),
  Place(
    imageUrl: 'assets/images/london.png',
    city: 'Al Wusta',
    country: 'Al Wusta',
    properties: 12,
  ),
  Place(
    imageUrl: 'assets/images/rome.png',
    city: 'Musandam',
    country: 'Musandam',
    properties: 34,
  ),
  Place(
    imageUrl: 'assets/images/sydney.png',
    city: 'Al Buraymi',
    country: 'Al Buraymi',
    properties: 23,
  ),
  Place(
    imageUrl: 'assets/images/tokyo.png',
    city: 'Ad Dhahirah',
    country: 'Ad Dhahirah',
    properties: 44,
  ),
];
