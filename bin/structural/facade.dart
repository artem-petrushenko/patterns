/// Facade is a structural design pattern that provides a simplified interface to a complex subsystem.
library;

class Subsystem1 {
  void operation1() {
    print("Subsystem1: Operation1");
  }
}

class Subsystem2 {
  void operation2() {
    print("Subsystem2: Operation2");
  }
}

class Subsystem3 {
  void operation3() {
    print("Subsystem3: Operation3");
  }
}

class Facade {
  final Subsystem1 _subsystem1;
  final Subsystem2 _subsystem2;
  final Subsystem3 _subsystem3;

  Facade(this._subsystem1, this._subsystem2, this._subsystem3);

  void simplifiedOperation() {
    print("Facade: Simplified operation:");
    _subsystem1.operation1();
    _subsystem2.operation2();
    _subsystem3.operation3();
  }
}

void main(List<String> arguments) {
  Subsystem1 subsystem1 = Subsystem1();
  Subsystem2 subsystem2 = Subsystem2();
  Subsystem3 subsystem3 = Subsystem3();

  Facade facade = Facade(subsystem1, subsystem2, subsystem3);

  facade.simplifiedOperation();
}
