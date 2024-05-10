class Destination {
  final int id;
  final String name;
  final String address;
  final String imageUrl;
  bool isFavorite = false;

  Destination({
    required this.id,
    required this.name,
    required this.address,
    required this.imageUrl,
  });
}