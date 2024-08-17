void main() {
  MacBook m = MacBook("Dell");
  m.display();
}

class Laptop {
  String? name;
  String? model;
  Laptop(this.name, this.model) {
    print("constructor Called");
  }
  void display() {
    print("the name of Laptop is '$name' and Model is '$model'");
  }
}

class MacBook extends Laptop {
  MacBook(name) : super(name, "iSpiron");
}
