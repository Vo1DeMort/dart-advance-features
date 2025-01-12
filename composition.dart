//NOTE: since dart doesn't allow multiple inheritance composition is used
// Engine Class
class Engine {
  void start() => print("Engine started");
  void stop() => print("Engine stopped");
}

// Transmission Class
class Transmission {
  void changeGear(int gear) => print("Gear changed to $gear");
}

// Car Class using Composition
class Car {
  //NOTE: Car has-an-Engine
  //NOTE: Car has-a-Transmission
  //"HAS-A"
  final Engine engine;
  final Transmission transmission;

  Car(this.engine, this.transmission);

  void drive() {
    engine.start();
    print("Car is now driving");
  }

  void park() {
    transmission.changeGear(0);
    engine.stop();
    print("Car is now parked");
  }
}

void main() {
  // Create instances of Engine and Transmission
  Engine engine = Engine();
  Transmission transmission = Transmission();

  // Compose them into a Car
  Car car = Car(engine, transmission);

  // Use the Car
  car.drive();
  car.park();
}

//NOTE: free to use or ignore the methods
//** flexible **
