//NOTE: messing with constructors
/// dart doesn't implicitly call the super class constructor
class Animal {
  final String name;

  Animal(this.name);
  void eat() {
    print("I am eating");
  }
}

class Dog extends Animal {
  // sort of feed the arg from god to super class
  Dog(String name) : super(name);
  void bark() {
    print("I am barking");
  }
}
