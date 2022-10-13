class MenuItem {
  String? name;
  double? price;
  String? image;
  int? id;

  MenuItem({this.name, this.price, this.image, this.id});
}

List<MenuItem> menuItems = [
  MenuItem(
      name: 'Biscotti',
      price: 2.75,
      image: 'assets/images/biscotti.jpg',
      id: 1),
  MenuItem(
      name: 'Cannoli', price: 3.25, image: 'assets/images/cannoli.jpg', id: 2),
  MenuItem(
      name: 'Cappuccino',
      price: 3.50,
      image: 'assets/images/cappuccino.jpg',
      id: 3),
  MenuItem(
      name: 'Espresso',
      price: 2.50,
      image: 'assets/images/espresso.jpg',
      id: 4),
  MenuItem(
      name: 'Focaccia con Mortadella',
      price: 4.50,
      image: 'assets/images/focaccia.jpg',
      id: 5),
  MenuItem(
      name: 'Panino Bistecca',
      price: 8.75,
      image: 'assets/images/panino.jpg',
      id: 6),
];
