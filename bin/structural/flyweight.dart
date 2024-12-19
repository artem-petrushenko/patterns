/// Flyweight is a structural design pattern that allows sharing objects to support a large number of fine-grained objects efficiently.
library;

class Flyweight {
  final String intrinsicState;

  Flyweight(this.intrinsicState);

  void operation(String extrinsicState) {
    print("Flyweight with intrinsicState: $intrinsicState, extrinsicState: $extrinsicState");
  }
}

class FlyweightFactory {
  final Map<String, Flyweight> _flyweights = {};

  Flyweight getFlyweight(String key) {
    if (!_flyweights.containsKey(key)) {
      _flyweights[key] = Flyweight(key);
      print("Creating new flyweight with key: $key");
    } else {
      print("Reusing existing flyweight with key: $key");
    }
    return _flyweights[key]!;
  }
}

void main(List<String> arguments) {
  FlyweightFactory factory = FlyweightFactory();

  Flyweight flyweight1 = factory.getFlyweight("A");
  flyweight1.operation("External State 1");

  Flyweight flyweight2 = factory.getFlyweight("B");
  flyweight2.operation("External State 2");

  Flyweight flyweight3 = factory.getFlyweight("A");
  flyweight3.operation("External State 3");
}
