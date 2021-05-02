enum UserType { SADMIN, CLIENT, SERVER, DELIVERER, GUEST }


class User {
  String firstName;
  String lastName;

  User(this.firstName,
      this.lastName);
}