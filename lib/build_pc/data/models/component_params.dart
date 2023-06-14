class ComponentParams {
  final String name;
  final String imagePath;

  String get componentType => name;

  ComponentParams({
    required this.name,
    required this.imagePath,
  });
}
