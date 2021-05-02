enum OrderStatus { PENDING, PREPARING, DELIVERING, COMPLETE }

class Order {
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