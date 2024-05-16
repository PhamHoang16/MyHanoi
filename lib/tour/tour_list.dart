class TourList {
  final String name;
  final String image;
  final String date;
  final String location;
  final String description;
  final int price;
  final List<String> itinerary;

  TourList({
    required this.name,
    required this.image,
    required this.date,
    required this.location,
    required this.description,
    required this.price,
    required this.itinerary,
  });

  static List<TourList> tours = [
    TourList(
      name: 'Tour 3 ngày Đi bộ Phố Cổ',
      image: 'assets/images/phocohanoi.jpg',
      date: "20/05/2024 - 22/05/2024",
      location: "Phố Cổ, Quận Hoàn Kiếm, Hà Nội",
      description: 'Tour Đi Bộ Phố Cổ là chuyến hành trình thú vị giúp bạn khám phá những con phố cổ '
          'kính định của Hà Nội. Trải nghiệm đầy hấp dẫn khi bạn bước chân qua những con phố xưa cũ, '
          'ngắm nhìn các ngôi nhà cổ, thăm quan các địa điểm lịch sử và văn hóa nổi tiếng của Thủ đô. '
          'Điểm dừng chân cuối cùng của chuyến đi là chợ Đồng Xuân, nơi bạn có cơ hội thưởng thức những '
          'món ăn đặc sản và trải nghiệm không khí sôi động của thị trường.',
      price: 1000000,
      itinerary: [
        'Ngày 1: Tham quan Hồ Gươm và Đền Ngọc Sơn.',
        'Ngày 2: Khám phá những con phố cổ xưa của Phố Cổ.',
        'Ngày 3: Khám phá ẩm thực địa phương tại Chợ Đồng Xuân.',
      ],
    ),
    TourList(
      name: 'Tour 3 ngày Nhà tù Hỏa Lò',
      image: 'assets/images/Nhatuhoalo.jpg',
      date: "26/07/2024 - 28/07/2024",
      location: "1 Hỏa Lò, Quận Hoàn Kiếm, Hà Nội",
      description: 'Tour Nhà Tù Hỏa Lò là cơ hội để bạn tìm hiểu sâu hơn về lịch sử đen tối của nhà tù nổi '
          'tiếng này. Trong suốt chuyến tham quan, bạn sẽ được hướng dẫn bởi các chuyên gia và học giả về lịch '
          'sử của Nhà Tù Hỏa Lò từ thời thuộc địa đến chiến tranh Việt Nam. Bạn sẽ hiểu rõ hơn về cuộc sống '
          'của những người bị giam giữ, cũng như tác động của nhà tù đến lịch sử và văn hóa của Việt Nam.',
      price: 500000,
      itinerary: [
        'Ngày 1: Tham quan Nhà Tù Hỏa Lò cùng hướng dẫn viên.',
        'Ngày 2: Tìm hiểu về cuộc đấu tranh của người Việt Nam cho độc lập.',
        'Ngày 3: Tham quan bảo tàng và xem về tác động của chiến tranh.',
      ],
    ),
    TourList(
      name: 'Tour 3 ngày Văn Miếu Quốc Tử Giám',
      image: 'assets/images/Vanmieuquoctugiam.jpg',
      date: "13/02/2024 - 15/02/2024",
      location: "58 Quốc Tử Giám, Quận Đống Đa, Hà Nội",
      description: 'Tour Văn Miếu Quốc Tử Giám sẽ đưa bạn trở lại thời kỳ cổ đại và hiểu rõ hơn về giáo dục '
          'truyền thống của Việt Nam. Với một lịch trình tham quan kỹ lưỡng, bạn sẽ khám phá toàn bộ quần thể'
          ' Văn Miếu - Quốc Tử Giám, từ các đền thờ và nhà học, đến các khu vườn và sân. Bạn sẽ cảm nhận '
          'được sự tôn trọng và tự hào của người Việt Nam với hệ thống giáo dục và trí thức lịch sử.',
      price: 500000,
      itinerary: [
        'Ngày 1: Khám phá quần thể Văn Miếu - Quốc Tử Giám.',
        'Ngày 2: Tìm hiểu về giáo dục Việt Nam và Nho giáo.',
        'Ngày 3: Thăm các khu vườn và sân của Văn Miếu.',
      ],
    ),
    TourList(
      name: 'Tour 2 ngày Vườn quốc gia Ba Vì',
      image: 'assets/images/Vuonquocgiabavi.jpg',
      date: "24/05/2024 - 25/05/2024",
      location: "Vườn Quốc Gia Ba Vì, Hà Nội",
      description: 'Tour Vườn Quốc Gia Ba Vì là một chuyến hành trình lý tưởng để thoát khỏi sự ồn ào của thành phố. '
          'Bạn sẽ được tham gia vào các hoạt động dã ngoại, leo núi và tận hưởng không khí trong lành của thiên nhiên. '
          'Đêm qua tại khu nghỉ dưỡng trong rừng sẽ là một trải nghiệm không thể quên, giúp bạn thư giãn và nạp lại năng lượng.',
      price: 700000,
      itinerary: [
        'Ngày 1: Khởi hành từ Hà Nội, tham quan khu du lịch sinh thái Ao Vua, leo núi Ba Vì.',
        'Ngày 2: Tham quan đền Thượng, trở về Hà Nội.',
      ],
    ),
    TourList(
      name: 'Tour 1 ngày Chùa Hương',
      image: 'assets/images/Chuahuong.jpg',
      date: "26/05/2024",
      location: "Hương Sơn, Mỹ Đức, Hà Nội",
      description: 'Tour Chùa Hương là chuyến hành trình tâm linh đặc biệt, đưa bạn đến với khu danh thắng Hương Sơn, '
          'nơi có ngôi chùa Hương nổi tiếng. Bạn sẽ có cơ hội tham gia lễ hội chùa Hương, thưởng ngoạn cảnh đẹp tự nhiên '
          'và tìm hiểu về đời sống tâm linh của người dân nơi đây.',
      price: 200000,
      itinerary: [
        'Ngày 1: Khởi hành từ Hà Nội, tham quan Chùa Thiên Trù, động Hương Tích, trở về Hà Nội.',
      ],
    ),
    TourList(
      name: 'Tour 1 ngày Làng cổ Đường Lâm',
      image: 'assets/images/Langcoduonglam.jpg',
      date: "27/05/2024",
      location: "Làng Cổ Đường Lâm, Sơn Tây, Hà Nội",
      description: 'Tour Làng Cổ Đường Lâm sẽ đưa bạn trở về với không gian cổ kính và bình yên của một ngôi làng Việt Nam truyền thống. '
          'Bạn sẽ được chiêm ngưỡng những ngôi nhà cổ, tham quan đình làng Mông Phụ và tìm hiểu về nét đẹp văn hóa, lịch sử của làng cổ Đường Lâm.',
      price: 150000,
      itinerary: [
        'Ngày 1: Khởi hành từ Hà Nội, tham quan đình làng Mông Phụ, nhà cổ Đường Lâm, trở về Hà Nội.',
      ],
    ),
  ];

  static List<TourList> getTourList() {
    return tours;
  }
}
