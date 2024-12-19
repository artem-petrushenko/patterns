/// Decorator is a structural design pattern that allows adding new behavior to an object dynamically without altering its structure.
library;

abstract class Component {
  String operation();
}

class ConcreteComponent implements Component {
  @override
  String operation() {
    return "ConcreteComponent: Operation";
  }
}

class Decorator implements Component {
  final Component _component;

  Decorator(this._component);

  @override
  String operation() {
    return _component.operation();
  }
}

class ConcreteDecoratorA extends Decorator {
  ConcreteDecoratorA(super.component);

  @override
  String operation() {
    return "ConcreteDecoratorA: ${super.operation()}";
  }
}

class ConcreteDecoratorB extends Decorator {
  ConcreteDecoratorB(super.component);

  @override
  String operation() {
    return "ConcreteDecoratorB: ${super.operation()}";
  }
}

void main(List<String> arguments) {
  Component simpleComponent = ConcreteComponent();
  print(simpleComponent.operation());

  Component decoratedA = ConcreteDecoratorA(simpleComponent);
  print(decoratedA.operation());

  Component decoratedB = ConcreteDecoratorB(decoratedA);
  print(decoratedB.operation());
}
