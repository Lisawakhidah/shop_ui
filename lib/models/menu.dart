class Menu {
  final String id;
  final String name;
  final String description;
  final String imageId;

  Menu({
    required this.id,
    required this.name,
    required this.description,
    required this.imageId,
  });

  factory Menu.fromMap(Map<String, dynamic> map) {
    return Menu(
      id: map['\$id'],
      name: map['name'],
      description: map['description'],
      imageId: map['imageId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '\$id': id,
      'name': name,
      'description': description,
      'imageId': imageId,
    };
  }
}
