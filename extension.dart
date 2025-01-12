//NOTE: add more functionality to an existing class
//keyword "extension"

extension StringReversal on String {
  String get reversed => this.split('').reversed.join('');
}

void main() {
  String word = "hello";
  print(word.reversed); // Output: "olleh"
}
