import 'package:flutter/material.dart';

class HistoricalSiteList{
  final String name;
  final String image;
  final String description;
  final String address;

  HistoricalSiteList({
    required this.name,
    required this.image,
    required this.description,
    required this.address,
  });
}

final List<HistoricalSiteList> historicalSites = [
  HistoricalSiteList(
    name: "Thành Cổ Loa",
    image: "assets/images/Thanhcoloa.jpg",
    description:
    "Cổ Loa, một trong những di tích lịch sử lâu đời nhất còn tồn tại tại Hà Nội, đánh dấu một trang sử đầy hấp dẫn về thần kim quy và mối tình đầy trắc trở của Mị Châu và Trọng Thủy. Đặc biệt, những nghiên cứu của các nhà khảo cổ học đã xác định Cổ Loa là tòa thành có tuổi đời 'vĩnh cửu' nhất tại Việt Nam. Thành này có diện tích rộng khoảng 500 hecta và được xây dựng từ thời vua An Dương Vương, với cấu trúc 9 vòng xoáy tròn ốc cực kỳ phức tạp.",
    address: "Xã Cổ Loa, huyện Đông Anh, Hà Nội – cách trung tâm thành phố khoảng 20km",
  ),
  HistoricalSiteList(
    name: "Văn Miếu Quốc Tử Giám",
    image: "assets/images/Vanmieuquoctugiam.jpg",
    description: "Văn Miếu Quốc Tử Giám, thường được coi là ngôi trường đại học tiền thân đầu tiên tại Việt Nam, là một di tích lịch sử phô diễn những hạt mầm tri thức và nhân cách xuất sắc. Tọa lạc trong lòng thủ đô Hà Nội, công trình này có một quá khứ lấp lánh với nhiều kỳ thi 'Đình' lừng lẫy, hội tụ những tâm hồn hiền tài, những tâm trí sáng dạ và tấm lòng hướng về sự phát triển của quốc gia.",
    address: "Số 58, đường Quốc Tử Giám, phường Văn Miếu, quận Đống Đa, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Chùa Trấn Quốc",
    image: "assets/images/Chuatranquoc.jpg",
    description: "Chùa Trấn Quốc, ngôi chùa cổ kính nhất tại Hà Nội, tỏa sáng bằng vẻ đẹp kiến trúc đỉnh cao mà không một ngôi chùa nào trên thế giới có thể so sánh. Suốt hàng thế kỷ, chùa Trấn Quốc đã gắn liền với cuộc sống của người dân thủ đô và trở thành trung tâm lễ hội quan trọng đầu năm.",
    address: "Gần với cửa hàng kem Hồ Tây, đường Thanh Niên, quận Tây Hồ, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Nhà tù Hỏa Lò",
    image: "assets/images/Nhatuhoalo.jpg",
    description: "Nhà tù Hỏa Lò là một di tích lịch sử tại Hà Nội, nổi danh với biệt danh 'địa ngục trần gian của thủ đô'. Được xây dựng từ năm 1896, nó chiếm tổng diện tích lên đến 12.000 mét vuông. Đây là nơi mà thực dân Pháp tàn ác sử dụng để giam giữ và tra tấn những tù nhân chính trị bằng những hình phạt đáng kinh ngạc.",
    address: "Số 1, phố Hỏa Lò, quận Hoàn Kiếm, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Lăng Chủ Tịch Hồ Chí Minh",
    image: "assets/images/langbac.jpg",
    description: "Khu di tích này là một trong những điểm đến nổi tiếng tại Hà Nội, thu hút du khách không chỉ vì việc tham quan Bác Hồ để tỏ lòng kính trọng đối với người cha của dân tộc, mà còn để trải nghiệm cuộc sống giản dị và gần gũi với thiên nhiên, nhưng cuộc sống của ông đã từng trải qua.",
    address: "Số 19, đường Ngọc Hà, phường Điện Bàn, quận Ba Đình, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Tháp nước Hàng Đậu",
    image: "assets/images/Thapnuochangdau.jpg",
    description: "Tháp nước Hàng Đậu, còn gọi là Bốt Hàng Đậu, là một trong những di tích lịch sử độc đáo tại Hà Nội, thu hút rất nhiều du khách đến tham quan và lưu lại những bức ảnh độc đáo. Đây là một trong hai tháp nước cổ nhất ở Thủ Đô, được xây dựng bởi người Pháp vào năm 1894, đánh dấu sự thay đổi đáng kể trong cuộc sống của người dân khi họ chuyển từ việc sử dụng nước từ giếng đào và ao hồ sang nước máy tiện lợi.",
    address: "Phố Hàng Đậu, phường Đồng Xuân, quận Hoàn Kiếm, Tp Hà Nội",
  ),
  HistoricalSiteList(
    name: "Chợ Đồng Xuân",
    image: "assets/images/Chodongxuan.jpg",
    description: "Chợ Đồng Xuân, một trong những khu chợ cổ kính tại Hà Nội, là nơi quy tụ hoạt động buôn bán và trao đổi hàng hóa trong suốt hai thế kỷ. Nó không chỉ là một điểm thương mại sầm uất mà còn là một di tích lịch sử tại thủ đô, chứng kiến nhiều sự kiện quan trọng của thành phố.",
    address: "Phố cổ Hà Nội quận Hoàn Kiếm, Tp Hà Nội",
  ),
  HistoricalSiteList(
    name: "Hoàng Thành Thăng Long",
    image: "assets/images/Hoangthanhthanglong.jpg",
    description: "Khu di tích Hoàng Thành Thăng Long thể hiện một huyền thoại hùng vĩ kéo dài qua hơn 1000 năm lịch sử của thủ đô văn hiến. Đây là một minh chứng sống động về sự phồn thịnh và phấn đấu của Việt Nam trong nhiều triều đại, từ thời Lý, Trần, đến Lê và nhiều giai đoạn khác.",
    address: "Số 19, đường Hoàng Diệu, phường Điện Bàn, quận Ba Đình, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Chùa Một Cột",
    image: "assets/images/Chuamotcot.jpg",
    description: "Chùa Một Cột, còn được biết đến với tên gọi Liên Hoa Hoa Đài hoặc Diên Hựu Tự, là một trong những viên ngọc quý trong danh sách di tích lịch sử của Hà Nội. Với kiến trúc vô cùng độc đáo và lạ mắt, chùa này đã được thế giới công nhận là một tượng đài nghệ thuật tinh xảo.",
    address: "Phố chùa Một Cột, phường Đội Cấn, quận Ba Đình, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Đền Ngọc Sơn",
    image: "assets/images/Denngocson.jpg",
    description: "Hồ Hoàn Kiếm, nằm ở trung tâm của thủ đô, luôn thu hút sự quan tâm của du khách bởi sự đa dạng trong các hoạt động giải trí và ẩm thực. Tại đây, bạn có thể trải nghiệm những hoạt động vui chơi sôi động và thưởng thức những món ăn ngon độc đáo. Cụm di tích quanh hồ Gươm, đặc biệt là đền Ngọc Sơn, là điểm dừng chân không thể bỏ qua trong hành trình khám phá thủ đô của bạn.",
    address: "Bờ hồ Hoàn Kiếm, đường Đinh Tiên Hoàng, phường Hàng Trống, quận Hoàn Kiếm, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Cầu Long Biên",
    image: "assets/images/Caulongbien.jpg",
    description: "Cầu Long Biên, một bảo tàng sống động của lịch sử, ra đời vào ngày 28/02/1902, là một trong những nơi quan trọng kết nối với hai cuộc kháng chiến quan trọng của người dân thủ đô. Đây không chỉ là một công trình giao thông, mà còn là biểu tượng của sự kiên định và sức mạnh của người dân Hà Nội.",
    address: "Quận Hoàn Kiếm, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Cột Cờ Hà Nội",
    image: "assets/images/Cotcohanoi.jpg",
    description: "Cột cờ Hà Nội, được xây dựng trong thời kỳ của vua Gia Long triều Nguyễn vào năm 1812, có mục đích ban đầu làm đài quan sát để giám sát toàn bộ thành phố. Nó không chỉ đơn thuần là một tượng đài mà còn là một biểu tượng của sự phát triển và thăng trầm trong lịch sử của Thủ đô qua hơn hai thế kỷ.",
    address: "Số 28A Phố Điện Biên Phủ, phường Điện Biên, quận Ba Đình, Tp Hà Nội",
  ),
  HistoricalSiteList(
    name: "Gò Đống Đa",
    image: "assets/images/Godongda.jpg",
    description: "Gò Đống Đa là nơi chứng kiến sự hào hùng và chiến công của nghĩa quân Tây Sơn trong cuộc chiến tranh bảo vệ đất nước. Công viên và di tích Gò Đống Đa đã được xây dựng vào năm 1989, để kỷ niệm 200 năm chiến thắng tại trận Ngọc Hồi - Đống Đa. ",
    address: "Phố Tây Sơn, phường Quang Trung, quận Đống Đa, Tp Hà Nội",
  ),
  HistoricalSiteList(
    name: "Ô Quan Chưởng",
    image: "assets/images/Oquanchuong.jpg",
    description: "Ô Quan Chưởng, hay còn gọi là Ô Đông Hà hoặc Ô Cửa Đông, là duy nhất trong số cửa ô của Thành Thăng Long còn tồn tại cho đến ngày nay. Công trình này đã được công nhận là di tích lịch sử quốc gia vào ngày 19/01/2022.",
    address: "Phố Thanh Hà, quận Hoàn Kiếm, tp Hà Nội",
  ),
  // Thêm các di tích lịch sử khác nếu cần
];
