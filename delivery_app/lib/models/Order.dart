enum OrderStatus { PENDING, PREPARING, DELIVERING, COMPLETE }

class Order {
  //TODO: add more attributes to order objects
  int id;
  DateTime timeStamp;
  String description;
  OrderStatus status;

  Order(
    this.id,
    this.timeStamp,
    this.description,
    this.status,
      );
}