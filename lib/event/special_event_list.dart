import 'package:flutter/material.dart';

class EventPage {
  final String name;
  final String image;
  final String date; // Thêm ngày diễn ra
  final String location;
  final String description; // Thêm mô tả chi tiết
  final int adultPrice;
  final int childrenPrice;
  bool isFavor;

  EventPage({
    required this.name,
    required this.image,
    required this.date,
    required this.location,
    required this.description,
    required this.adultPrice,
    required this.childrenPrice,
    required this.isFavor
  });
}

final List<EventPage> events = [
  EventPage(
    name: "Thăm Lăng Bác",
    image: "assets/images/langbac.jpg",
    date: "20/05/2024",
    location: "Số 19, đường Ngọc Hà, phường Điện Bàn, quận Ba Đình, Hà Nội",
    description:
        "Thăm Lăng Bác là một trải nghiệm tuyệt vời để hiểu về lịch sử Việt Nam. Lăng Bác là nơi an nghỉ cuối cùng của Chủ tịch Hồ Chí Minh, một nhân vật vĩ đại trong lịch sử Việt Nam. Nơi đây không chỉ là một địa điểm du lịch mà còn là biểu tượng văn hóa và lịch sử quan trọng của đất nước.",
    adultPrice: 50000,
    childrenPrice: 25000,
    isFavor: false
  ),
  EventPage(
    name: "Marathon Hanoi 2024",
    image: "assets/images/marathon.jpg",
    date: "15/06/2024",
    location: "Hà Nội, Việt Nam",
    description:
        "Cuộc marathon hàng năm tại Hà Nội thu hút hàng nghìn vận động viên từ khắp nơi. Đây là một sự kiện thể thao lớn với sự tham gia của các vận động viên chuyên nghiệp và yêu thích thể thao từ cộng đồng. Ngoài việc khích lệ sự rèn luyện và rèn luyện thể chất, cuộc marathon còn là cơ hội tuyệt vời để người dân tham gia cùng nhau và tạo ra những kỷ niệm đáng nhớ.",
    adultPrice: 70000,
    childrenPrice: 20000,
      isFavor: false
  ),
  EventPage(
    name: "Football Championship",
    image: "assets/images/football.png",
    date: "30/07/2024",
    location: "Hà Nội, Việt Nam",
    description:
        "Giải bóng đá quốc gia đỉnh cao với sự tham gia của các đội bóng hàng đầu. Giải đấu không chỉ thu hút sự chú ý của người hâm mộ bóng đá mà còn là cơ hội cho các đội bóng thể hiện tài năng và sự đối đầu. Các trận đấu sẽ được tổ chức trên các sân vận động lớn và thu hút hàng nghìn người hâm mộ tham dự. Đây chắc chắn sẽ là một sự kiện không thể bỏ qua đối với các fan bóng đá.",
    adultPrice: 150000,
    childrenPrice: 50000,
      isFavor: false
  ),
  EventPage(
    name: "Đại chiến sông Hồng",
    image: "assets/images/Daichiensonghong.jpg",
    date: "24/06/2024",
    location: "Sông Hồng, Hà Nội, Việt Nam",
    description:
        "Đại chiến sông Hồng là một cuộc thi bơi kịch tính giữa hai tuyển thủ nổi tiếng: Bệu bé bỏng và Nguyễn Thị Ánh Viên. Hai vận động viên tài năng của Việt Nam đã cống hiến cho người hâm mộ những phút giây hồi hộp và kịch tính khi cạnh tranh giành chiến thắng trong sự kiện nặng ký này. Sự kiện được tổ chức tại sông Hồng, nơi mà khán giả đã được chứng kiến một trong những cuộc đấu bơi kinh điển nhất trong lịch sử thể thao của đất nước.",
    adultPrice: 25000,
    childrenPrice: 10000,
      isFavor: false
  ),
  EventPage(
    name: "Hội chợ Sách và Văn hóa",
    image: "assets/images/hoichosach.jpg",
    date: "20/09/2024",
    location: "Mỹ Đình, Hà Nội",
    description:
    "Hội chợ Sách và Văn hóa là sự kiện lớn nhất trong lĩnh vực văn hóa và sách tại Việt Nam. Tại hội chợ này, bạn có thể khám phá hàng ngàn tựa sách mới từ các nhà xuất bản hàng đầu, tham gia các buổi ký tặng sách và gặp gỡ các tác giả nổi tiếng. Ngoài ra, bạn cũng có cơ hội tham gia các hoạt động văn hóa như triển lãm nghệ thuật, buổi trò chuyện và giao lưu văn hóa với cộng đồng yêu sách.",
    adultPrice: 25000,
    childrenPrice: 10000,
      isFavor: false
  ),
  EventPage(
    name: "Triển lãm Nghệ thuật",
    image: "assets/images/exhibition.jpg",
    date: "05/09/2024",
    location: "Bảo tàng Mỹ thuật Việt Nam, Ba Đình, Hà Nội",
    description:
    "Triển lãm Nghệ thuật Đương đại là một cơ hội tuyệt vời để tham quan và tận hưởng tác phẩm của các nghệ sĩ đương đại hàng đầu. Triển lãm này thu hút sự quan tâm của cả cộng đồng nghệ thuật và công chúng, mang lại một không gian trưng bày đa dạng và sáng tạo. Khám phá các tác phẩm nghệ thuật độc đáo và giao lưu với các nghệ sĩ là những trải nghiệm thú vị tại triển lãm này.",
    adultPrice: 40000,
    childrenPrice: 20000,
      isFavor: false
  ),
];
