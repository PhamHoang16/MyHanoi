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

  static List<Restaurant> search(String keyword) {
    return restaurants
        .where((res) => res.name.toLowerCase().contains(keyword.toLowerCase()))
        .toList();
  }

  static List<Restaurant> restaurants = [
    Restaurant(
      name: "Izakaya by Koki",
      image: "assets/images/Inakaya.jpg",
      description: "Ẩn mình dưới tầng hầm của khách sạn Capella, Izakaya là một không gian hiện đại và sang trọng "
          "với nhiều khu vực tiếp khách khác nhau, bao gồm cả khu vực ghế sofa thân mật hơn. Du khách được chào đón bằng "
          "rượu sake miễn phí có hương thơm của trái cây nhiệt đới. Sử dụng 70% nguyên liệu từ Nhật Bản, nhà hàng này có "
          "thực đơn phong phú bao gồm đặc sản các món nướng: cá tuyết đen nướng sốt Saikyo đặc biệt ấn tượng. Hãy nhớ dành "
          "chỗ cho món tráng miệng đặc trưng: yame matcha tự làm hoặc kem nấm truffle đen.",
      address: "Basement 2, Capella, 11 Le Phung Hieu Street, Trang Tien Ward, Hoan Kiem District, Hanoi",
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
      address: "Basement 1, Capella, 11 Le Phung Hieu Street, Trang Tien Ward, Hoan Kiem District, Hanoi",
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
      address: "11 Trang Tien Street, Trang Tien Ward, Hoan Kiem District, Hanoi",
      isFavor: false,
    ),
    Restaurant(
      name: "Habakuk",
      image: "assets/images/Habakuk.jpg",
      description: "Ẩn mình trong một con phố hẹp, Habakuk không nổi bật, vì vậy hãy để ý những biển hiệu có đèn nền "
          "màu xanh lam. Ban ngày, đây là một quán cà phê đặc sản phục vụ cà phê nguyên chất và thực đơn bữa nửa buổi "
          "nhỏ. Vào buổi tối nó biến thành một quán rượu hiện đại. Thực đơn bữa tối ngắn gọn mang phong cách châu Âu "
          "hiện đại với điểm nhấn Địa Trung Hải riêng biệt. Việc nấu nướng tự tin, được trình bày gọn gàng và ngập "
          "tràn hương vị được đánh giá tốt; dịch vụ này ấm áp và hữu ích.",
      address: "Alley 4, Phan Huy Chu Street, Phan Chu Trinh Ward, Hoan Kiem District, Hanoi",
      isFavor: false,
    ),
    Restaurant(
      name: "1946 Cua Bac",
      image: "assets/images/Cuabac.jpg",
      description: "Món ăn đặc trưng của nhà hàng dễ thấy này, nằm trong một ngôi nhà màu vàng và xanh lá cây rực rỡ, "
          "là món lẩu cua chiên và cháo. Được phục vụ trong những chiếc bát nhỏ tại bàn, cua, chim bồ câu, thịt bò "
          "viên và rau củ kết hợp tạo nên một hỗn hợp hương vị ngọt ngào tự nhiên. Nhân viên chỉ nói được một ít tiếng Anh "
          "nhưng thực đơn bằng tiếng Anh lại có sẵn nhiều món ăn Việt Nam chính thống hấp dẫn. Đặt chỗ trước để "
          "đảm bảo có chỗ ngồi.",
      address: "3 Yen Thanh Alley, 61 Cua Bac Street, Quan Thanh Ward, Ba Dinh District, Hanoi",
      isFavor: false,
    ),    Restaurant(
      name: "Phở Tiến",
      image: "assets/images/Photien.jpg",
      description: "Quán nhỏ vui nhộn này thu hút người dân địa phương, chuyên về mì gà và mì bò, với nhiều món trải "
          "dài từ phố, bún và miến. Món phố gà đặc trưng là món nhất định phải thử. Sợi mì mềm mịn ăn kèm hành lá "
          "và lá chanh rất ngon. Quẩy (que bột chiên) giòn, không béo là phù hợp nhất. Đối với những người thích phiêu "
          "lưu, có nhiều loại phủ nội tạng gà.",
      address: "50 Nguyen Truong To Street, Truc Bach Ward, Ba Dinh District, Hanoi",
      isFavor: false,
    ),

    // Thêm các nhà hàng khác tương tự
  ];
}


