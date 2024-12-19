/// Singleton is a creational design pattern that lets you ensure that a class has only one instance, while providing a
/// global access point to this instance.
library;

class Singleton {
  Singleton._();

  static final Singleton _instance = Singleton._();

  factory Singleton() {
    return _instance;
  }
}

void main(List<String> arguments) {
  final instance1 = Singleton();
  final instance2 = Singleton();

  print(instance2 == instance1);
}
