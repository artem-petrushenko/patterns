/// Abstract Factory is a creational design pattern that provides an interface for creating families of related or
/// dependent objects without specifying their concrete classes.
library;

abstract class ProductA {
  String operationA();
}

abstract class ProductB {
  String operationB();
}

class ConcreteProductA1 implements ProductA {
  @override
  String operationA() {
    return "ConcreteProductA1 operation";
  }
}

class ConcreteProductB1 implements ProductB {
  @override
  String operationB() {
    return "ConcreteProductB1 operation";
  }
}

class ConcreteProductA2 implements ProductA {
  @override
  String operationA() {
    return "ConcreteProductA2 operation";
  }
}

class ConcreteProductB2 implements ProductB {
  @override
  String operationB() {
    return "ConcreteProductB2 operation";
  }
}

abstract class AbstractFactory {
  ProductA createProductA();

  ProductB createProductB();
}

class ConcreteFactory1 implements AbstractFactory {
  @override
  ProductA createProductA() {
    return ConcreteProductA1();
  }

  @override
  ProductB createProductB() {
    return ConcreteProductB1();
  }
}

class ConcreteFactory2 implements AbstractFactory {
  @override
  ProductA createProductA() {
    return ConcreteProductA2();
  }

  @override
  ProductB createProductB() {
    return ConcreteProductB2();
  }
}

void main(List<String> arguments) {
  AbstractFactory factory1 = ConcreteFactory1();
  ProductA productA1 = factory1.createProductA();
  ProductB productB1 = factory1.createProductB();
  print(productA1.operationA());
  print(productB1.operationB());

  AbstractFactory factory2 = ConcreteFactory2();
  ProductA productA2 = factory2.createProductA();
  ProductB productB2 = factory2.createProductB();
  print(productA2.operationA());
  print(productB2.operationB());
}
