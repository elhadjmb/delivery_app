//TODO: Database class aka Server class contains identifications from the remote erver/db of firebase

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/models/User.dart';

class DatabaseService{
final String id;
DatabaseService({required this.id});

final CollectionReference userCollection = FirebaseFirestore.instance.collection("users");
   
  Future<void> updateUserData(TUser user) async {
    return await userCollection.doc(id).set(user.toJson());
  }


}
