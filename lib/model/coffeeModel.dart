class Coffee {
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;
  final int price;

  Coffee(
      {this.name,
      this.type,
      this.shortDesc,
      this.desc,
      this.image,
      this.rate,
      this.price});
}

List<Coffee> menu = [
  Coffee(
      name: "ahmid",
      type: 'bus',
      shortDesc: "Esspresso dengan rasa lebih mild",
      desc:
          "The driving staff comprises Omanis along with many of the support teams in operations, administration and engineering.",
      image: "assets/bus2.jpg",
      rate: 5,
      price: 2),
  Coffee(
      name: "Khalid",
      type: "bus",
      shortDesc: "Espresso dengan milky dan gurih.",
      desc:
      "The driving staff comprises Omanis along with many of the support teams in operations, administration and engineering.",      image: "assets/bus2.jpg",
      rate: 5,
      price: 4),
  Coffee(
      name: "assad",
      type: "bus",
      shortDesc: "Ekstrak kopi dengan buih putih",
      desc:
      "The driving staff comprises Omanis along with many of the support teams in operations, administration and engineering.",      image: "assets/bus2.jpg",
      rate: 5,
      price: 2),
  Coffee(
      name: "Ahmad",
      type: "bus",
      shortDesc: "Espresso dengan air panas",
      desc:
      "The driving staff comprises Omanis along with many of the support teams in operations, administration and engineering.",      image: "assets/bus2.jpg",
      rate: 5,
      price: 3),
];
