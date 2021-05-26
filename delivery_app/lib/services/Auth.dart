import 'package:firebase_auth/firebase_auth.dart';
import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/models/User.dart';
import 'package:delivery_app/services/Database.dart';
//import 'package:firebase_auth/firebase_auth.dart';
class AuthService{
  
final FirebaseAuth _auth = FirebaseAuth.instance;

//create usersign obj based on firebaseuser
TUser _userFromFirebaseUser(User user){

   return user != null ?  TUser(id: user.uid, phone: '', address: '', name: '', isActive: true,  type: null):TUser(id: '', phone: '', address: '', name: '', isActive: true,  type:null );
 

}

// auth change user stream
Stream<TUser> get user {
    return _auth.authStateChanges() 
      //.map((FirebaseUser user) => _userFromFirebaseUser(user));
      .map(_userFromFirebaseUser);
     }

  //sign in anon
  Future singInAnon() async{
    try {
     UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    }
    catch(e){
            print(e.toString());
      return null;
    }
  }

  //sign in with email password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
     UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
     return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }


  //register with email and password
   
   Future registerWithEmailAndPassword(String email, String password,String name, String address, String phone,UserType type ) async {
    try {
     UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      TUser sr= TUser(id: user.uid, isActive: true,email: user.email, name: name, address: address, phone: phone,type: type );
      await DatabaseService(id: user.uid).updateUserData(sr);
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }

 
 
 
 
 
 
  //sign out
Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

}