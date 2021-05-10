//import 'package:firebase_auth/firebase_auth.dart';
import 'package:delivery_app/models/UserSignInData.dart';
import 'package:delivery_app/services/Database.dart';
import 'package:firebase_auth/firebase_auth.dart';
class authService{
final FirebaseAuth _auth = FirebaseAuth.instance;

//create usersign obj based on firebaseuser
UserSignInData _userFromFirebaseUser(FirebaseUser user){
 return user != null ? UserSignInData(id: user.uid, phone: '') : UserSignInData(id: '', phone:'' );

}

// auth change user stream
Stream<UserSignInData> get user {
    return _auth.onAuthStateChanged
      //.map((FirebaseUser user) => _userFromFirebaseUser(user));
      .map(_userFromFirebaseUser);
     }

  //sign in anon
  Future singInAnon() async{
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
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
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
     return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }


  //register with email and password
   
   Future registerWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      // create a new document for the user with the uid
     // await DatabaseService(uid: user.uid).updateUserData('0','new crew member', 100);
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }

 
 
 
 
 
 
  //sign out
Future signOut() async {
    try {
     // return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

}