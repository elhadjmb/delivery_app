// to access any of the strings: ClassName.mapName["stringName"]
// which will give you "stringValue"
// example: Inner.userType["sAdmin"]

class Inner {
  /*For strings inside the code, not necessarily to be shown to the user*/

  static const Map<String, String> userType = {
    "sAdmin": "sAdmin",
    "client": "client",
    "server": "server",
    "deliverer": "deliverer",
    "guest": "guest",
  };

  static const Map<String, String> dishCategory = {
    "starter": "starter",
    "drink": "drink",
    //TODO: Add more categories
  };
}

class Outer {
  /*For strings shown to the user in views*/

  //TODO: Gets appended on progress of views
  static const Map<String, String> button = {

    "okButton": "Ok",
    "cancelButton": "Cancel",
  };

  static const Map<String, String> title = {
    "home": "Home",
    "profile": "Profile",
  };

}


/*

BY THE WAY, THIS IS WHY I USE IT LIKE THAT: FOR LANGUAGE PREFERENCES
HERE'S AN EXAMPLE:

class Outer {
  static const Map<String, Map<String, String>> button = {
    "okButton": {"en":"Ok", "ar":"موافق"},
    "cancelButton": {"en":"Cancel", "ar":"إلغاء"},
  };
}


AND THE CALL WILL BE AS SO:

Outer.button["okButton"][userLanguage]

WHERE userLanguage IS A VARIABLE SELECTED FROM THE SETTINGS PAGE OF THE USER
 */