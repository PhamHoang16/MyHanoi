class Restaurant {
  final String name;
  final String image;
  final String description;
  final String address;
  bool isFavor;

  Restaurant({
    required this.name,
    required this.image,
    required this.description,
    required this.address,
    required this.isFavor,
  });

  static List<Restaurant> restaurants = [
    Restaurant(
      name: "Izakaya by Koki",
      image: "assets/images/Inakaya.jpg",
      description: "Ẩn mình dưới tầng hầm của khách sạn Capella, Izakaya là một không gian hiện đại và sang trọng "
          "với nhiều khu vực tiếp khách khác nhau, bao gồm cả khu vực ghế sofa thân mật hơn. Du khách được chào đón bằng "
          "rượu sake miễn phí có hương thơm của trái cây nhiệt đới. Sử dụng 70% nguyên liệu từ Nhật Bản, nhà hàng này có "
          "thực đơn phong phú bao gồm đặc sản các món nướng: cá tuyết đen nướng sốt Saikyo đặc biệt ấn tượng. Hãy nhớ dành "
          "chỗ cho món tráng miệng đặc trưng: yame matcha tự làm hoặc kem nấm truffle đen.",
      address: "Basement 2, Capella, 11 Le Phung Hieu Street, Trang Tien Ward, Hoan Kiem District, Hanoi, Vietnam",
      isFavor: false,
    ),
    Restaurant(
      name: "Hibana by Koki",
      image: "assets/images/Hibana.jpg",
      description: "Du khách được nâng niu từ khi đến cho đến khi khởi hành để trải nghiệm sân khấu tại quầy 14 "
          "chỗ ở tầng hầm của khách sạn Capella. Đầu bếp đáng mến Hiroshi Yamaguchi nấu khéo léo và chính xác các "
          "món teppanyaki giàu hương vị phức tạp. Thực đơn có nét đặc trưng riêng biệt, được thể hiện bằng các nguyên "
          "liệu cao cấp được vận chuyển hai lần mỗi tuần từ Nhật Bản, chẳng hạn như bào ngư, tôm hùm gai, nhím biển, "
          "thịt bò Yaeyama Kyori và cua lông Hokkaido.",
      address: "Basement 1, Capella, 11 Le Phung Hieu Street, Trang Tien Ward, Hoan Kiem District, Hanoi, Vietnam",
      isFavor: false,
    ),
    Restaurant(
      name: "El Gaucho",
      image: "assets/images/Gaucho.jpg",
      description: "Đây là tiền đồn của một chuỗi toàn cầu chuyên về các món bít tết cổ điển, đặc biệt là "
          "bít tết bò cao cấp. Thịt bò hữu cơ được nuôi bằng ngô đã được chứng nhận từ Hoa Kỳ và bò ăn cỏ "
          "từ Úc được nướng hoàn hảo theo phong cách Argentina - ít gia vị và không có nước sốt để làm nổi bật "
          "thêm hương vị tự nhiên của chúng. Hãy ghé thăm cửa hàng bán thịt liền kề để mua một ít thịt chất lượng "
          "về nhà. Bắt đầu hoặc kết thúc buổi tối của bạn với cocktail tại quầy bar. Khuyến nghị đặt phòng.",
      address: "11 Trang Tien Street, Trang Tien Ward, Hoan Kiem District, Hanoi, Vietnam",
      isFavor: false,
    ),
    Restaurant(
      name: "Hibana by Koki",
      image: "assets/images/Hibana.jpg",
      description: "Du khách được nâng niu từ khi đến cho đến khi khởi hành để trải nghiệm sân khấu tại quầy 14 "
          "chỗ ở tầng hầm của khách sạn Capella. Đầu bếp đáng mến Hiroshi Yamaguchi nấu khéo léo và chính xác các "
          "món teppanyaki giàu hương vị phức tạp. Thực đơn có nét đặc trưng riêng biệt, được thể hiện bằng các nguyên "
          "liệu cao cấp được vận chuyển hai lần mỗi tuần từ Nhật Bản, chẳng hạn như bào ngư, tôm hùm gai, nhím biển, "
          "thịt bò Yaeyama Kyori và cua lông Hokkaido.",
      address: "Basement 1, Capella, 11 Le Phung Hieu Street, Trang Tien Ward, Hoan Kiem District, Hanoi, Vietnam",
      isFavor: false,
    ),
    Restaurant(
      name: "Hibana by Koki",
      image: "assets/images/Hibana.jpg",
      description: "Du khách được nâng niu từ khi đến cho đến khi khởi hành để trải nghiệm sân khấu tại quầy 14 "
          "chỗ ở tầng hầm của khách sạn Capella. Đầu bếp đáng mến Hiroshi Yamaguchi nấu khéo léo và chính xác các "
          "món teppanyaki giàu hương vị phức tạp. Thực đơn có nét đặc trưng riêng biệt, được thể hiện bằng các nguyên "
          "liệu cao cấp được vận chuyển hai lần mỗi tuần từ Nhật Bản, chẳng hạn như bào ngư, tôm hùm gai, nhím biển, "
          "thịt bò Yaeyama Kyori và cua lông Hokkaido.",
      address: "Basement 1, Capella, 11 Le Phung Hieu Street, Trang Tien Ward, Hoan Kiem District, Hanoi, Vietnam",
      isFavor: false,
    ),    Restaurant(
      name: "Hibana by Koki",
      image: "assets/images/Hibana.jpg",
      description: "Du khách được nâng niu từ khi đến cho đến khi khởi hành để trải nghiệm sân khấu tại quầy 14 "
          "chỗ ở tầng hầm của khách sạn Capella. Đầu bếp đáng mến Hiroshi Yamaguchi nấu khéo léo và chính xác các "
          "món teppanyaki giàu hương vị phức tạp. Thực đơn có nét đặc trưng riêng biệt, được thể hiện bằng các nguyên "
          "liệu cao cấp được vận chuyển hai lần mỗi tuần từ Nhật Bản, chẳng hạn như bào ngư, tôm hùm gai, nhím biển, "
          "thịt bò Yaeyama Kyori và cua lông Hokkaido.",
      address: "Basement 1, Capella, 11 Le Phung Hieu Street, Trang Tien Ward, Hoan Kiem District, Hanoi, Vietnam",
      isFavor: false,
    ),

    // Thêm các nhà hàng khác tương tự
  ];
}


