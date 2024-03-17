// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class Mammal implements Animal {
  @override
  void makeSound() {
    print("Mammal sound");
  }
}

// Derived class
class Dog extends Mammal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

// Class initialized with data from a file
class Cat extends Mammal {
  String name;

  Cat(this.name);

  @override
  void makeSound() {
    print("$name says: Meow!");
  }
}

// Method demonstrating the use of a loop
void printNumbers(int n) {
  for (var i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Instance of a class initialized with data from a file
  final cat = Cat("Whiskers");

  // Demonstrate method override
  final dog = Dog();

  // Demonstrate the use of a loop
  printNumbers(5);

  // Demonstrate interface implementation
  cat.makeSound(); // Output: Whiskers says: Meow!
  dog.makeSound(); // Output: Woof!
}
