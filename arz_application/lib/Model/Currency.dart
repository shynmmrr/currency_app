class Currency {
  String? id;
  String? title;
  String? price;
  String? changes;
  String? status;

  Currency(
      {required this.id, //required shon ma null nagoftim bashe
      required this.title, //vaghti migim this eshare be string haye tarif karde bala darim
      required this.price,
      required this.changes,
      required this.status}); //constractor named{}
}
