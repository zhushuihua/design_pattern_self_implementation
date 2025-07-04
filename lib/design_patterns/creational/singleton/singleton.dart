class Singleton {
  static Singleton? _singleton;
  Singleton._create();
  factory Singleton() {
    _singleton ??= Singleton._create();
    return _singleton!;
  }
}
