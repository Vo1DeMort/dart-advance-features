//NOTE: factory constructor
// not necessarily create new instances
// can prevent creaing an instance
// create a custom instance

class User {
  String role;

  // Private name constructor
  User._internal(this.role);

  // Factory constructor
  factory User(String type) {
    if (type == 'admin') {
      return User._internal('Administrator');
    } else {
      return User._internal('Guest');
    }
  }
}

void main() {
  var admin = User('admin');
  var guest = User('user');

  print(admin.role); // Administrator
  print(guest.role); // Guest
}
