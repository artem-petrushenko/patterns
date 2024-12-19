/// Factory Method is a creational design pattern that provides an interface for creating objects in a superclass,
/// but allows subclasses to alter the type of objects that will be created.
library;

abstract class Product {
  String operation();
}

class ConcreteProductA implements Product {
  @override
  String operation() => 'Result of ConcreteProductA';
}

class ConcreteProductB implements Product {
  @override
  String operation() => 'Result of ConcreteProductB';
}

abstract class Creator {
  Product factoryMethod();

  String someOperation() {
    final product = factoryMethod();
    return 'Creator: Working with ${product.operation()}';
  }
}

class ConcreteCreatorA extends Creator {
  @override
  Product factoryMethod() => ConcreteProductA();
}

class ConcreteCreatorB extends Creator {
  @override
  Product factoryMethod() => ConcreteProductB();
}

void main(List<String> arguments) {
  Creator creator = ConcreteCreatorA();
  print(creator.someOperation());

  creator = ConcreteCreatorB();
  print(creator.someOperation());
}
