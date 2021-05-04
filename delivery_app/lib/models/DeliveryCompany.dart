import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/models/User.dart';

class DeliveryCompany {
  int id;
  String name;
  String address;
  Map<Position, User> employees;
  DateTime openedHours, closedHours;
  bool isOpen;

  DeliveryCompany({
    required this.id,
    required this.employees,
    required this.name,
    required this.address,
    required this.closedHours,
    required this.isOpen,
    required this.openedHours,
  });
}
