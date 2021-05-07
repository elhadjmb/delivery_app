//import 'package:firebase_auth/firebase_auth.dart';
import 'package:delivery_app/models/UserSignInData.dart';
import 'package:delivery_app/services/Database.dart';
class authService{
//final FirebaseAuth _auth = FirebaseAuth.instance;

//create usersign obj based on firebaseuser
/*UserSignInData _userfromfirebaseuser(FirebaseUser user){
 return user != null ? UserSignInData(id: user.id) : null;

}*/

// auth change user stream
/*Stream<UserSignInData> get user {
    return _auth.onAuthStateChanged
      //.map((FirebaseUser user) => _userFromFirebaseUser(user));
      .map(_userFromFirebaseUser);
     }
*/
  //sign in anon
  Future singInAnon() async{
    try {
      /*AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;*/
    }
    catch(e){
            print(e.toString());
      return null;
    }
  }

  //sign in with email password


  //register with email and password


  //sign out


}