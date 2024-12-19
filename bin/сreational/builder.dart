/// Builder is a creational design pattern used to construct complex objects step by step.
library;

class Product {
  String? partA;
  String? partB;

  @override
  String toString() {
    return 'Product with partA: $partA, partB: $partB';
  }
}

class Builder {
  Product _product = Product();

  void buildPartA() {
    _product.partA = 'Part A';
  }

  void buildPartB() {
    _product.partB = 'Part B';
  }

  Product getResult() {
    return _product;
  }
}

void main(List<String> arguments) {
  final builder = Builder();

  builder.buildPartA();
  builder.buildPartB();

  final product = builder.getResult();
  print(product);
}
