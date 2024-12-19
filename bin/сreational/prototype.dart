/// Prototype is a creational design pattern that lets you copy existing objects without making your code dependent
/// on their classes.
library;

abstract class Prototype {
  Prototype clone();
}

class ConcretePrototype implements Prototype {
  final String field;

  ConcretePrototype(this.field);

  @override
  Prototype clone() {
    return ConcretePrototype(field);
  }
}

void main(List<String> arguments) {
  final prototype = ConcretePrototype('Original');
  final cloned = prototype.clone();

  print('Prototype field: ${prototype.field}');
  print('Cloned field: ${cloned is ConcretePrototype ? (cloned).field : 'N/A'}');
  print('Are objects identical? ${prototype == cloned}');
}
