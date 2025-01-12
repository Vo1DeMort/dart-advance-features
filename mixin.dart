//NOTE: idea is to avoid method(func) duplications
//keyword is "with"
mixin Fly {
  void fly() => print("Flying!");
}

mixin Swim {
  void swim() => print("Swimming!");
}

class Duck with Fly, Swim {}

void main() {
  Duck duck = Duck();
  duck.fly(); // Output: Flying!
  duck.swim(); // Output: Swimming!
}
