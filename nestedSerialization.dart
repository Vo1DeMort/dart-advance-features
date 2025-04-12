import 'dart:convert';

// Define the Address class
class Address {
  final String street;
  final String city;
  final String country;

  Address({required this.street, required this.city, required this.country});

  // Deserialize (from JSON to Address)
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      city: json['city'],
      country: json['country'],
    );
  }

  // Serialize (from Address to JSON)
  Map<String, dynamic> toJson() {
    return {'street': street, 'city': city, 'country': country};
  }
}

// Define the Person class with a nested Address
class Person {
  final String name;
  final int age;
  final Address address;

  Person({required this.name, required this.age, required this.address});

  // Deserialize (from JSON to Person)
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      age: json['age'],
      address: Address.fromJson(
        json['address'],
      ), // Deserialize the Address object
    );
  }

  // Serialize (from Person to JSON)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'address': address.toJson(), // Serialize the Address object
    };
  }
}

void main() {
  // Create a Person object with a nested Address object
  Address address = Address(
    street: "123 Main St",
    city: "Springfield",
    country: "USA",
  );
  Person person = Person(name: "John Doe", age: 30, address: address);

  // Convert the Person object to JSON
  Map<String, dynamic> personJson = person.toJson();
  print(personJson);
  // Output: {name: John Doe, age: 30, address: {street: 123 Main St, city: Springfield, country: USA}}

  // Sample JSON data for deserialization
  String jsonData = '''
    {
      "name": "John Doe",
      "age": 30,
      "address": {
        "street": "123 Main St",
        "city": "Springfield",
        "country": "USA"
      }
    }
  ''';

  // Parse the JSON string into a Map
  Map<String, dynamic> jsonMap = jsonDecode(jsonData);

  // Convert the JSON map back into a Person object
  Person deserializedPerson = Person.fromJson(jsonMap);
  print(deserializedPerson.name); // Output: John Doe
  print(deserializedPerson.address.city); // Output: Springfield
}
