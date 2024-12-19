/// Proxy is a structural design pattern that provides an object representing another object.
library;

class RealSubject {
  void request() {
    print("RealSubject: Handling request.");
  }
}

class Proxy {
  final RealSubject _realSubject;

  Proxy(this._realSubject);

  void request() {
    print("Proxy: Checking access before delegating request.");
    _realSubject.request();  // Delegating the request to RealSubject
  }
}

void main(List<String> arguments) {
  RealSubject realSubject = RealSubject();
  Proxy proxy = Proxy(realSubject);

  proxy.request();  // Proxy checks access and delegates to RealSubject
}
