void main() {
  // Windows window = Windows();
  // window.turnOff();
  // window.turnOn();
  Dog dog = Dog();
  dog.sound();
}

class Laptop {
  void turnOn() {
    print("Turn on laptop");
  }

  void turnOff() {
    print("turn Off  laptop");
  }
}

class Windows implements Laptop {
  @override
  void turnOff() {
    // TODO: implement turnOff
    print("windows turned Off");
  }

  @override
  void turnOn() {
    // TODO: implement turnOn
    print("windows turned On");
  }
}

abstract class Animal {
  // this is the abstract function(Method)
  void sound();
  void eat() {
    print("Animal can eat");
  }
}

class Dog extends Animal {
  void sound() {
    super.eat();
    print("Dog can Bark");
  }
}
