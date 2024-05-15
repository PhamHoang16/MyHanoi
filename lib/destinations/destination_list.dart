
class Destination {
  final String name;
  final String image;
  final String location;
  final String description; // Thêm mô tả chi tiết
  final String star;
  final String review;
  bool isFavor;

  Destination({
    required this.name,
    required this.image,
    required this.location,
    required this.description,
    required this.star,
    required this.review,
    required this.isFavor
  });
}

final List<Destination> destinations = [
  Destination(
    name: "Phan Đình Phùng",
    image: "assets/images/pdphung.jpg",
    location: "Ba Đình, Hà Nội",
    description:
    "Thăm Lăng Bác là một trải nghiệm tuyệt vời để hiểu về lịch sử Việt Nam. "
    "Lăng Bác là nơi an nghỉ cuối cùng của Chủ tịch Hồ Chí Minh, một nhân vật vĩ "
    "đại trong lịch sử Việt Nam. Nơi đây không chỉ là một địa điểm du lịch mà còn là "
    "biểu tượng văn hóa và lịch sử quan trọng của đất nước.",
    star: "4.5",
    review: "ok",
    isFavor: false
  ),
  Destination(
      name: "Hồ Tây",
      image: "assets/images/hotay.jpg",
      location: "Tây Hồ, Hà Nội",
      description:
      "Thăm Lăng Bác là một trải nghiệm tuyệt vời để hiểu về lịch sử Việt Nam. "
          "Lăng Bác là nơi an nghỉ cuối cùng của Chủ tịch Hồ Chí Minh, một nhân vật vĩ "
          "đại trong lịch sử Việt Nam. Nơi đây không chỉ là một địa điểm du lịch mà còn là "
          "biểu tượng văn hóa và lịch sử quan trọng của đất nước.",
    star: "4.5",
    review: "ok",
      isFavor: false
  ),
  Destination(
      name: "Phan Đình Phùng",
      image: "assets/images/pdphung.jpg",
      location: "Ba Đình, Hà Nội",
      description:
      "Thăm Lăng Bác là một trải nghiệm tuyệt vời để hiểu về lịch sử Việt Nam. "
          "Lăng Bác là nơi an nghỉ cuối cùng của Chủ tịch Hồ Chí Minh, một nhân vật vĩ "
          "đại trong lịch sử Việt Nam. Nơi đây không chỉ là một địa điểm du lịch mà còn là "
          "biểu tượng văn hóa và lịch sử quan trọng của đất nước.",
      star: "4.5",
      review: "ok",
      isFavor: false
  ),

];