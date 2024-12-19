/// Composite is a structural design pattern that allows you to compose objects into tree-like structures to represent part-whole hierarchies.
library;

abstract class Component {
  String getName();

  void operation();
}

class Leaf implements Component {
  final String name;

  Leaf(this.name);

  @override
  String getName() {
    return name;
  }

  @override
  void operation() {
    print("Leaf: Operation for ${getName()}");
  }
}

class Composite implements Component {
  final String name;
  final List<Component> _children = [];

  Composite(this.name);

  void add(Component component) {
    _children.add(component);
  }

  void remove(Component component) {
    _children.remove(component);
  }

  @override
  String getName() {
    return name;
  }

  @override
  void operation() {
    print("Composite: Operation for ${getName()}");
    for (var child in _children) {
      child.operation();
    }
  }
}

void main(List<String> arguments) {
  Component leaf1 = Leaf("Leaf 1");
  Component leaf2 = Leaf("Leaf 2");
  Component composite = Composite("Composite 1");

  if (composite is Composite) {
    composite.add(leaf1);
    composite.add(leaf2);
  }

  composite.operation();
}
