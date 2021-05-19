//TODO: Database class aka Server class contains identifications from the remote erver/db of firebase
/*
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/constants/types.dart';

class DatabaseService{
final String id;
DatabaseService({required this.id});

final CollectionReference userCollection = Firestore.instance.collection('User');

  Future<void> updateUserData(String name, String address, String phone,UserType type,String email) async {
    return await userCollection.document(id).setData({
      'name': name,
      'address': address,
      'UserType': type,
      'phone': phone,
      'email':email,
      
    });
  }


}
*/