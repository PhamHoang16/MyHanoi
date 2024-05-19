class Comment {
  final String content;
  final String username;
  Comment({required this.username, required this.content});
}
class Hotel {
  final String name;
  final String image;
  final String location;
  final String description; // Thêm mô tả chi tiết
  final String star;
  final String review;
  final String date;
  final int price;
  final List<Comment> comments;
  bool isFavor;

  Hotel({
    required this.name,
    required this.image,
    required this.location,
    required this.description,
    required this.star,
    required this.review,
    required this.date,
    required this.price,
    required this.comments,
    required this.isFavor
  });

  static List<Hotel> hotels = [
    Hotel(
        name: "Mường Thanh",
        image: "assets/images/hotel1.jpg",
        location: "Ba Đình, Hà Nội",
        description:
        "Thăm Lăng Bác là một trải nghiệm tuyệt vời để hiểu về lịch sử Việt Nam. "
            "Lăng Bác là nơi an nghỉ cuối cùng của Chủ tịch Hồ Chí Minh, một nhân vật vĩ "
            "đại trong lịch sử Việt Nam. Nơi đây không chỉ là một địa điểm du lịch mà còn là "
            "biểu tượng văn hóa và lịch sử quan trọng của đất nước.",
        star: "4.5",
        review: "ok",
        date: "22/05/2024",
        price: 2000000,
        comments: [
          Comment(username: 'Huy', content: 'Thành quá đẹp.'),
          Comment(username: 'Đạt', content: 'Nơi này mang lại nhiều điều cổ kính.'),
        ],
        isFavor: false
    ),
    Hotel(
        name: "Mövenpick Hotel",
        image: "assets/images/hotel3.jpg",
        location: "Tây Hồ, Hà Nội",
        description:
        "Thăm Lăng Bác là một trải nghiệm tuyệt vời để hiểu về lịch sử Việt Nam. "
            "Lăng Bác là nơi an nghỉ cuối cùng của Chủ tịch Hồ Chí Minh, một nhân vật vĩ "
            "đại trong lịch sử Việt Nam. Nơi đây không chỉ là một địa điểm du lịch mà còn là "
            "biểu tượng văn hóa và lịch sử quan trọng của đất nước.",
        star: "4.5",
        review: "ok",
        date: "22/05/2024",
        price: 5000000,
        comments: [
          Comment(username: 'Huy', content: 'Thành quá đẹp.'),
          Comment(username: 'Đạt', content: 'Nơi này mang lại nhiều điều cổ kính.'),
        ],
        isFavor: false
    ),
    Hotel(
        name: "JW Mariot",
        image: "assets/images/hotel2.jpg",
        location: "Ba Đình, Hà Nội",
        description: "Tọa lạc tại trung tâm thương mại mới của Hà Nội cách sân bay Nội Bài 27km, "
            "vị trí của khách sạn tạo điều kiện thuận lợi cho việc đi lại của khách hàng trong và ngoài nước. "
            "Đến với khách sạn JW Marriott Hanoi, khách hàng sẽ được chào đón bởi sự thân thiện của đội ngũ nhân "
            "viên tận tình và tận hưởng những dịch vụ cao cấp bậc nhất khu vực, đảm bảo sẽ mang đến cho khách hàng "
            "một trải nghiệm ấn tượng không thể nào quên.",
        star: "4.5",
        review: "ok",
        date: "22/05/2024",
        price: 5000000,
        comments: [
          Comment(username: 'Huy', content: 'Thành quá đẹp.'),
          Comment(username: 'Đạt', content: 'Nơi này mang lại nhiều điều cổ kính.'),
        ],
        isFavor: false
    ),
    Hotel(
        name: "Metropole Hanoi",
        image: "assets/images/hotel4.jpg",
        // Replace with actual image path
        location: "Hoàn Kiếm, Hà Nội",
        description: "Nổi tiếng với kiến trúc thuộc địa Pháp cổ kính kết hợp nội thất sang trọng hiện đại, "
            "Sofitel Legend Metropole Hanoi mang đến cho du khách trải nghiệm lưu trú đẳng cấp. Nằm ngay trung tâm "
            "thành phố, khách sạn thuận tiện cho việc di chuyển và khám phá các địa điểm tham quan nổi tiếng.",
        star: "5.0",
        review: "Tuyệt vời",
        date: "23/05/2024",
        price: 8000000,
        comments: [
          Comment(username: 'Huy', content: 'Thành quá đẹp.'),
          Comment(username: 'Đạt', content: 'Nơi này mang lại nhiều điều cổ kính.'),
        ],
        isFavor: true
    )

  ];
}