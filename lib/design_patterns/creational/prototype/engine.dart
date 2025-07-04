class Engine {
  final String type;
  final double powerhorse;
  Engine(this.type, this.powerhorse);
  Engine copyWith({String? type, double? powerhouse}) {
    return Engine(type ?? this.type, powerhouse ?? this.powerhorse);
  }

  @override
  String toString() {
    return '$type powerhorse:$powerhorse';
  }
}
