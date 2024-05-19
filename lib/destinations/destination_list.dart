
import '../historicalSites/historical_sites_list.dart';

class Destination {
  final String name;
  final String image;
  final String location;
  final String description; // Thêm mô tả chi tiết
  final String star;
  final String review;
  final List<Comment> comments;
  bool isFavor;

  Destination({
    required this.name,
    required this.image,
    required this.location,
    required this.description,
    required this.star,
    required this.review,
    required this.comments,
    required this.isFavor
  });

  static List<Destination> destinations = [
    Destination(
        name: "Phan Đình Phùng",
        image: "assets/images/pdphung.jpg",
        location: "Ba Đình, Hà Nội",
        description:"Phan Đình Phùng, a Vietnamese revolutionary leader, "
            "spearheaded the Can Vuong movement against French colonialism. "
            "His strategic brilliance and unwavering patriotism made him a national hero. "
            "Despite setbacks, he inspired the resistance until his passing in 1895. His legacy "
            "lives on as a symbol of Vietnam's fight for independence.",
        star: "4.5",
        review: "ok",
        comments: [
          Comment(username: 'Huy', content: 'Thành quá đẹp.'),
          Comment(username: 'Đạt', content: 'Nơi này mang lại nhiều điều cổ kính.'),
        ],
        isFavor: false
    ),
    Destination(
        name: "Hồ Tây",
        image: "assets/images/hotay.jpg",
        location: "Tây Hồ, Hà Nội",
        description: "West Lake, a sprawling freshwater lake in Hanoi, "
            "Vietnam, is a renowned historical, cultural, and recreational landmark.",
        star: "4.5",
        review: "ok",
        comments: [
          Comment(username: 'Huy', content: 'Thành quá đẹp.'),
          Comment(username: 'Đạt', content: 'Nơi này mang lại nhiều điều cổ kính.'),
        ],
        isFavor: false
    ),
    Destination(
        name: "Hồ Gươm",
        image: "assets/images/bg3.jpg",
        location: "Hoàn Kiếm, Hà Nội",
        description: "Hoan Kiem Lake, also known as Sword Lake, is a freshwater lake in the historic "
            "center of Hanoi, Vietnam. The lake is famous for the legend of the Golden Turtle returning a magical "
            "sword to Emperor Le Loi after he helped defeat the Chinese Ming invaders. Today, the lake is a popular "
            "tourist destination and a symbol of Hanoi's rich history and culture.",
        star: "4.5",
        review: "ok",
        comments: [
          Comment(username: 'Huy', content: 'Thành quá đẹp.'),
          Comment(username: 'Đạt', content: 'Nơi này mang lại nhiều điều cổ kính.'),
        ],
        isFavor: false
    ),
    Destination(
        name: "Phố Cổ",
        image: "assets/images/phocohanoi.jpg",
        location: "Hoàn Kiếm, Hà Nội",
        description: "Hanoi Old Quarter is a labyrinth of narrow streets lined with ancient guild houses and shops, offering a "
            "glimpse into Hanoi's rich history and vibrant culture. It is a UNESCO World Heritage Site and a must-visit for any traveler "
            "to Hanoi. Visitors can wander through the maze-like streets, haggle for souvenirs, and sample local street food.",
        star: "4.5",
        review: "ok",
        comments: [
          Comment(username: 'Huy', content: 'Thành quá đẹp.'),
          Comment(username: 'Đạt', content: 'Nơi này mang lại nhiều điều cổ kính.'),
        ],
        isFavor: false
    ),
    Destination(
        name: "Vườn Thú Hà Nội",
        image: "assets/images/zoo.jpg",
        location: "Cầu Giấy, Hà Nội",
        description: "Hanoi Zoo, also known as Thu Le Park, is an ideal place for family entertainment and education. It houses a diverse ecosystem of over 2,000 animals from 200 different species, offering visitors a chance to explore the wonders of the natural world.",
        star: "4.5",
        review: "ok",
        comments: [
          Comment(username: 'Huy', content: 'Thành quá đẹp.'),
          Comment(username: 'Đạt', content: 'Nơi này mang lại nhiều điều cổ kính.'),
        ],
        isFavor: false
    ),
    Destination(
        name: "Aeon Mall Hà Đông",
        image: "assets/images/aeon.jpg",
        location: "Hà Đông, Hà Nội",
        description: "Hanoi Zoo, also known as Thu Le Park, is an ideal place for family entertainment and education. It houses a diverse ecosystem of over 2,000 animals from 200 different species, offering visitors a chance to explore the wonders of the natural world.",
        star: "4.5",
        review: "ok",
        comments: [
          Comment(username: 'Huy', content: 'Thành quá đẹp.'),
          Comment(username: 'Đạt', content: 'Nơi này mang lại nhiều điều cổ kính.'),
        ],
        isFavor: false
    ),
  ];
}