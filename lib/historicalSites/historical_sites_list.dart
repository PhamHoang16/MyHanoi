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
    "Cổ Loa, một trong những di tích lịch sử lâu đời nhất còn tồn tại tại Hà Nội, "
      "đánh dấu một trang sử đầy hấp dẫn về thần kim quy và mối tình đầy trắc trở của Mị Châu và Trọng Thủy. "
      "Đặc biệt, những nghiên cứu của các nhà khảo cổ học đã xác định Cổ Loa là tòa thành có tuổi đời 'vĩnh cửu' "
      "nhất tại Việt Nam. Thành này có diện tích rộng khoảng 500 hecta và được xây dựng từ thời vua An Dương Vương, "
      "với cấu trúc 9 vòng xoáy tròn ốc cực kỳ phức tạp. \n\n"
      "Tuy nhiên, hiện nay, trong hành trình khám phá di tích lịch sử ấn tượng này tại Hà Nội, "
      "chỉ còn lại 3 vòng thành chính, chia thành 3 khu vực riêng biệt: Thành ngoại, Thành trung và Thành nội. \n\n"
      "Du khách có cơ hội thăm quan đền thờ An Dương Vương, một công trình xây dựng từ năm 1687, mang đậm nét "
      "kiến trúc cổ kính. Điểm đặc biệt ở đây là hai hố mắt rồng còn tồn tại bên giếng Ngọc, tạo nên một khung "
      "cảnh độc đáo và linh thiêng. Bên cạnh đó, bạn cũng có thể khám phá đền thờ Cao Lỗ và am Bà Chúa trong "
      "cuộc hành trình này, để hiểu thêm về những khía cạnh đa dạng của di tích lịch sử lâu đời nhất tại Hà Nội.",
    address: "Xã Cổ Loa, huyện Đông Anh, Hà Nội – cách trung tâm thành phố khoảng 20km",
  ),
  HistoricalSiteList(
    name: "Văn Miếu Quốc Tử Giám",
    image: "assets/images/Vanmieuquoctugiam.jpg",
    description: "Văn Miếu Quốc Tử Giám, thường được coi là ngôi trường đại học tiền thân đầu tiên tại Việt Nam, "
      "là một di tích lịch sử phô diễn những hạt mầm tri thức và nhân cách xuất sắc. Tọa lạc trong lòng thủ đô "
      "Hà Nội, công trình này có một quá khứ lấp lánh với nhiều kỳ thi 'Đình' lừng lẫy, hội tụ những tâm hồn "
      "hiền tài, những tâm trí sáng dạ và tấm lòng hướng về sự phát triển của quốc gia. \n\n"
      "Văn Miếu Quốc Tử Giám đã chứng kiến gần một thiên niên kỷ lịch sử, được khắc sâu vào ký ức từ năm 1070, "
      "thời vua Lý Thánh Tông. Ngoài việc là ngôi trường đáng tự hào, nơi đánh dấu sự hình thành của nền giáo "
      "dục Việt Nam, đây cũng là nơi linh thiêng dành cho việc thờ tự các bậc tiên sư của Nho Giáo. Khuê văn "
      "và bia đá, với kiến trúc độc đáo và giá trị lịch sử hùng hậu, tạo nên những điểm tham quan nổi bật "
      "trong Văn Miếu Quốc Tử Giám. \n\n"
      "Ngày nay, Văn Miếu vẫn là nơi thu hút giới trẻ Hà Nội đến để chụp hình tốt nghiệp và cau mong may mắn trước "
      "mỗi bước ngoặt quan trọng trong cuộc đời, là một góc kỷ niệm đáng giá trong hành trình học tập và "
      "phát triển cá nhân."
    ,
    address: "Số 58, đường Quốc Tử Giám, phường Văn Miếu, quận Đống Đa, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Chùa Trấn Quốc",
    image: "assets/images/Chuatranquoc.jpg",
    description: "Chùa Trấn Quốc, ngôi chùa cổ kính nhất tại Hà Nội, tỏa sáng bằng vẻ đẹp kiến trúc "
      "đỉnh cao mà không một ngôi chùa nào trên thế giới có thể so sánh. Suốt hàng thế kỷ, chùa Trấn Quốc "
      "đã gắn liền với cuộc sống của người dân thủ đô và trở thành trung tâm lễ hội quan trọng đầu năm. \n\n"
      "Kiến trúc của chùa Trấn Quốc được xây dựng theo nguyên tắc chặt chẽ của Phật Giáo và bao gồm một loạt "
      "các công trình quý báu như Cổng tam quan, Tiền đường, Thượng điện, Thiêu hương, tạo nên một bức "
      "tranh tinh tế của đạo Phật. Tuy nhiên, điểm đặc biệt và độc đáo nhất chính là tòa bảo tháp 11 tầng, "
      "cao khoảng 15 mét, nơi mà các tượng Phật A Di Đà được điêu khắc từ đá quý và sắp xếp trong các ô "
      "cửa hình vòm, mang lại một trải nghiệm tâm linh đầy phấn khích cho du khách. \n\n"
      "Chùa Trấn Quốc không chỉ là một nơi thánh thiêng mà còn là một tượng đài của nghệ thuật "
      "kiến trúc và tâm linh tại Hà Nội, là một điểm dừng chân tuyệt vời để khám phá sự hòa quyện giữa "
      "lịch sử và vẻ đẹp thiêng liêng."
    ,
    address: "Gần với cửa hàng kem Hồ Tây, đường Thanh Niên, quận Tây Hồ, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Nhà tù Hỏa Lò",
    image: "assets/images/Nhatuhoalo.jpg",
    description: "Nhà tù Hỏa Lò là một di tích lịch sử tại Hà Nội, nổi danh với biệt danh 'địa ngục "
      "trần gian của thủ đô'. Được xây dựng từ năm 1896, nó chiếm tổng diện tích lên đến 12.000 mét vuông. "
      "Đây là nơi mà thực dân Pháp tàn ác sử dụng để giam giữ và tra tấn những tù nhân chính trị bằng "
      "những hình phạt đáng kinh ngạc. \n\n"
      "Tại ngày nay, toàn bộ cảnh quan của di tích lịch sử này đã được tái hiện bằng mô hình 3D "
      "vô cùng chân thật và sinh động, đem lại cho du khách một trải nghiệm đáng sợ và đầy ấn tượng. "
      "Nhà tù Hỏa Lò đã được xếp hạng vào danh sách 'Top 10 nhà tù khét tiếng nhất trên thế giới' "
      "với những ký ức tăm tối về quá khứ đau thương và đối mặt với sự tàn bạo."
    ,
    address: "Số 1, phố Hỏa Lò, quận Hoàn Kiếm, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Lăng Chủ Tịch Hồ Chí Minh",
    image: "assets/images/langbac.jpg",
    description: "Khu di tích này là một trong những điểm đến nổi tiếng tại Hà Nội, "
      "thu hút du khách không chỉ vì việc tham quan Bác Hồ để tỏ lòng kính trọng đối với "
      "người cha của dân tộc, mà còn để trải nghiệm cuộc sống giản dị và gần gũi với thiên nhiên, "
      "nhưng cuộc sống của ông đã từng trải qua. \n\n"
      "Tại đây, bạn có thể thăm nhà sàn và ao cá, nơi mà Chủ tịch Hồ Chí Minh thường sống trong quá khứ. "
      "Hoặc bạn có thể thỏa sức tham quan và chụp hình tại Quảng trường Ba Đình, nơi mà Bác Hồ "
      "đã đọc bản Tuyên ngôn Độc lập vào năm 1945, một sự kiện lịch sử quan trọng. Bạn cũng có "
      "cơ hội tham gia lễ thượng cờ và hạ cờ, một nghi lễ nghiêm trang và trang nghiêm. \n\n"
      "Kiến trúc của khu di tích này không chỉ độc đáo mà còn là minh chứng rõ ràng cho mối quan hệ"
      " đoàn kết và hữu nghị mạnh mẽ giữa Việt Nam và Liên Xô, một biểu tượng cho sự đoàn kết "
      "trong cuộc chiến đấu cho tự do và độc lập.",
    address: "Số 19, đường Ngọc Hà, phường Điện Bàn, quận Ba Đình, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Tháp nước Hàng Đậu",
    image: "assets/images/Thapnuochangdau.jpg",
    description: "Tháp nước Hàng Đậu, còn gọi là Bốt Hàng Đậu, là một trong những di tích lịch sử "
      "độc đáo tại Hà Nội, thu hút rất nhiều du khách đến tham quan và lưu lại những bức ảnh độc đáo. "
      "Đây là một trong hai tháp nước cổ nhất ở Thủ Đô, được xây dựng bởi người Pháp vào năm 1894, "
      "đánh dấu sự thay đổi đáng kể trong cuộc sống của người dân khi họ chuyển từ việc sử dụng nước "
      "từ giếng đào và ao hồ sang nước máy tiện lợi. \n\n"
      "Công trình này có thiết kế hình trụ tròn, với một mái hình chóp nón lợp bằng tôn, "
      "cao khoảng 25 mét tính cả mái, và bao gồm 3 tầng với những ô cửa nhỏ có hình "
      "dạng lỗ châu mai vòng quanh. Màu sắc của nó mang sắc gạch nhuốm màu rêu phong, "
      "cùng với kiến trúc độc đáo, khiến cho Bốt Hàng Đậu trông giống như một đấu trường "
      "cổ điển La Mã, tạo nên một bầu không khí lịch sử độc đáo và thú vị. Không ngạc nhiên "
      "khi nơi đây luôn là một trong những điểm dừng chân ưa thích của du khách khi đến thủ đô Hà Nội."
    ,
    address: "Phố Hàng Đậu, phường Đồng Xuân, quận Hoàn Kiếm, Tp Hà Nội",
  ),
  HistoricalSiteList(
    name: "Chợ Đồng Xuân",
    image: "assets/images/Chodongxuan.jpg",
    description: "Chợ Đồng Xuân, một trong những khu chợ cổ kính tại Hà Nội, là nơi quy tụ "
      "hoạt động buôn bán và trao đổi hàng hóa trong suốt hai thế kỷ. Nó không chỉ là một "
      "điểm thương mại sầm uất mà còn là một di tích lịch sử tại thủ đô, chứng kiến nhiều "
      "sự kiện quan trọng của thành phố. \n\n"
      "Kiến trúc của Chợ Đồng Xuân mang dấu ấn của kiến trúc Pháp, với mặt tiền đặc biệt gồm "
      "năm phần hình tam giác có những lỗ như tổ ong nổi bật. Điều này tạo nên một nét độc "
      "đáo và dễ nhận biết cho khu chợ này trong lòng thành phố. Tuy nhiên, Chợ Đồng Xuân "
      "không chỉ là nơi mua sắm, mà còn là một bảo tàng về văn hóa tinh thần của người dân Kẻ Chợ, "
      "thể hiện qua cuộc sống hàng ngày và các hoạt động kinh doanh tại đây."
    ,
    address: "Phố cổ Hà Nội quận Hoàn Kiếm, Tp Hà Nội",
  ),
  HistoricalSiteList(
    name: "Hoàng Thành Thăng Long",
    image: "assets/images/Hoangthanhthanglong.jpg",
    description: "Khu di tích Hoàng Thành Thăng Long thể hiện một huyền thoại hùng vĩ kéo dài "
      "qua hơn 1000 năm lịch sử của thủ đô văn hiến. Đây là một minh chứng sống động về sự "
      "phồn thịnh và phấn đấu của Việt Nam trong nhiều triều đại, từ thời Lý, Trần, đến Lê và "
      "nhiều giai đoạn khác. \n\n"
      "Công trình này đặc biệt quan trọng khi nó đã được UNESCO công nhận là Di sản Văn hóa Thế "
      "giới từ năm 2010, thể hiện giá trị toàn cầu của nó và luôn là điểm đến không thể bỏ lỡ "
      "trong hành trình du lịch Hà Nội của nhiều du khách. \n\n"
      "Điểm nổi bật của khu di tích lịch sử này không chỉ là sự dài lâu của hơn 1000 năm lịch sử, "
      "mà còn là sự liên tục và kế thừa qua từng thời kỳ. Đặc điểm độc đáo của nó là sự phong phú "
      "của các tầng di tích và di vật, với những địa danh quan trọng như cột cờ Hà Nội, Đoan Môn, "
      "điện Kính Thiên, nhà D67 và nhiều điểm đến khác. Đây thực sự là một bảo tàng lịch sử sống "
      "động và thú vị, nơi mà bạn có thể khám phá sâu hơn về sự phát triển của thủ đô và đất nước."

    ,
    address: "Số 19, đường Hoàng Diệu, phường Điện Bàn, quận Ba Đình, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Chùa Một Cột",
    image: "assets/images/Chuamotcot.jpg",
    description: "Chùa Một Cột, còn được biết đến với tên gọi Liên Hoa Hoa Đài hoặc Diên Hựu Tự, là một "
      "trong những viên ngọc quý trong danh sách di tích lịch sử của Hà Nội. Với kiến trúc vô cùng độc đáo "
      "và lạ mắt, chùa này đã được thế giới công nhận là một tượng đài nghệ thuật tinh xảo. \n\n"
      "Chùa Một Cột được xây dựng vào những năm 1049, trong thời kỳ của vua Lý Thái Tông. Chùa đặc biệt "
      "ấn tượng bởi kiến trúc độc đáo của nó, tựa như một đóa sen rực rỡ nở giữa mặt nước. Nó không chỉ "
      "là một di tích lịch sử, mà còn là một tác phẩm nghệ thuật đỉnh cao của kiến trúc. \n\n"
      "Chùa Một Cột được Tổ chức Kỷ lục Châu Á công nhận là 'Ngôi chùa có kiến trúc độc đáo nhất Châu Á', "
      "thể hiện sự tôn trọng và ngưỡng mộ từ cộng đồng quốc tế. \n\n"
      "Bên trong khuôn viên chùa, có một cây Bồ Đề nghìn năm tuổi, luôn xanh tươi và mát mẻ, "
      "tạo ra không gian thanh bình. Suốt hàng ngàn năm, chùa đã giữ nguyên được những chi "
      "tiết kiến trúc độc đáo từ thời kỳ Lý, mang lại cho du khách một cái nhìn sâu sắc vào lịch sử "
      "và nghệ thuật kiến trúc của Việt Nam."

    ,
    address: "Phố chùa Một Cột, phường Đội Cấn, quận Ba Đình, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Đền Ngọc Sơn",
    image: "assets/images/Denngocson.jpg",
    description: "Hồ Hoàn Kiếm, nằm ở trung tâm của thủ đô, luôn thu hút sự quan tâm của du khách bởi "
      "sự đa dạng trong các hoạt động giải trí và ẩm thực. Tại đây, bạn có thể trải nghiệm những "
      "hoạt động vui chơi sôi động và thưởng thức những món ăn ngon độc đáo. Cụm di tích quanh hồ Gươm, "
      "đặc biệt là đền Ngọc Sơn, là điểm dừng chân không thể bỏ qua trong hành trình khám phá thủ đô của bạn. \n\n"
      "Kiến trúc độc đáo của cây cầu Thê Húc, với màu đỏ rực rỡ, phản chiếu trên mặt hồ lấp lánh, luôn "
      "là một điểm thu hút du khách, tạo cơ hội chụp ảnh tuyệt đẹp. Đền Ngọc Sơn, xây dựng từ đầu thế kỷ 19,"
      " khoảng năm 1865, nổi tiếng với sự linh thiêng và tôn nghiêm. Ngoài ra, cụm di tích lịch sử này còn "
      "bao gồm các kiến trúc độc đáo khác như Đài nghiên, Tháp bút, Đắc Nguyệt Lâu và khu trưng bày tiêu bản"
      " 'cụ rùa'. Tất cả tạo nên một bức tranh lịch sử và văn hóa phong phú, đem đến trải nghiệm thú vị cho"
      " du khách khi thăm quan thủ đô Hà Nội."
    ,
    address: "Bờ hồ Hoàn Kiếm, đường Đinh Tiên Hoàng, phường Hàng Trống, quận Hoàn Kiếm, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Cầu Long Biên",
    image: "assets/images/Caulongbien.jpg",
    description: "Cầu Long Biên, một bảo tàng sống động của lịch sử, ra đời vào ngày 28/02/1902, "
      "là một trong những nơi quan trọng kết nối với hai cuộc kháng chiến quan trọng của người dân "
      "thủ đô. Đây không chỉ là một công trình giao thông, mà còn là biểu tượng của sự kiên định "
      "và sức mạnh của người dân Hà Nội. \n\n"
      "Cầu Long Biên là cây cầu thép đầu tiên trải dọc sông Hồng, đánh dấu bước tiến quan trọng trong "
      "quá trình phát triển kinh tế và văn hóa của Hà Nội. Mặc dù đã có nhiều cây cầu khác xây dựng "
      "sau này, nhưng cầu Long Biên vẫn giữ vị trí quan trọng và không thể thiếu trong cuộc sống hàng "
      "ngày của người dân thành phố. \n\n"
      "Với kiến trúc cổ kính và vẻ đẹp độc đáo, cầu Long Biên không chỉ là một phần của quá khứ lịch sử "
      "mà còn là điểm đến phổ biến cho những ai muốn chụp hình, ngắm cảnh và thưởng thức khung "
      "cảnh tuyệt đẹp của Hà Nội vào ban đêm."
    ,
    address: "Quận Hoàn Kiếm, Hà Nội",
  ),
  HistoricalSiteList(
    name: "Cột Cờ Hà Nội",
    image: "assets/images/Cotcohanoi.jpg",
    description: "Cột cờ Hà Nội, được xây dựng trong thời kỳ của vua Gia Long triều Nguyễn vào năm 1812, "
      "có mục đích ban đầu làm đài quan sát để giám sát toàn bộ thành phố. Nó không chỉ đơn thuần là "
      "một tượng đài mà còn là một biểu tượng của sự phát triển và thăng trầm trong lịch sử của Thủ đô "
      "qua hơn hai thế kỷ. \n\n"
      "Kiến trúc độc đáo của Cột cờ Hà Nội không chỉ thể hiện vẻ đẹp mà còn chứa đựng những giá trị "
      "văn hóa lâu đời. Cột cờ này đã chứng kiến nhiều sự kiện quan trọng trong lịch sử của Việt Nam, "
      "bao gồm lần đầu tiên lá cờ đỏ sao vàng được cắm trên đỉnh năm 1945, đánh dấu một bước ngoặt biểu "
      "tượng trong cuộc đấu tranh cho độc lập của đất nước. Năm 1989, công trình này đã được công nhận "
      "là di tích lịch sử và văn hóa cấp quốc gia, ghi nhận vai trò quan trọng của nó trong lịch sử và "
      "văn hóa của Việt Nam.",
    address: "Số 28A Phố Điện Biên Phủ, phường Điện Biên, quận Ba Đình, Tp Hà Nội",
  ),
  HistoricalSiteList(
    name: "Gò Đống Đa",
    image: "assets/images/Godongda.jpg",
    description: "Gò Đống Đa là nơi chứng kiến sự hào hùng và chiến công của nghĩa quân Tây Sơn "
      "trong cuộc chiến tranh bảo vệ đất nước. Công viên và di tích Gò Đống Đa đã được xây dựng "
      "vào năm 1989, để kỷ niệm 200 năm chiến thắng tại trận Ngọc Hồi - Đống Đa. \n\n"
      "Công trình này bao gồm khu vực tượng đài Quang Trung, được xây dựng từ bê tông cốt thép, cao hơn 14m, "
      "và có 2 bức phù điêu miêu tả sự kiện trận đánh lịch sử. Ngoài ra, có một nhà trưng bày với mô "
      "hình 2 khẩu súng thần công và đối diện là Chùa Đồng Quang, tạo nên một không gian kết hợp giữa "
      "lịch sử và tâm linh. \n\n"
      "Mỗi năm vào mùng 5 tháng Giêng, nơi này tổ chức lễ hội Gò Đống Đa để tưởng nhớ và tôn vinh những "
      "tướng sĩ đã hy sinh trong cuộc chiến, đồng thời là dịp khơi gợi lại những ký ức hào hùng của "
      "dân tộc. Lễ hội này là một cơ hội để thế hệ sau kết nối với quá khứ và tôn vinh tinh thần anh "
      "hùng của người Việt Nam."
    ,
    address: "Phố Tây Sơn, phường Quang Trung, quận Đống Đa, Tp Hà Nội",
  ),
  HistoricalSiteList(
    name: "Ô Quan Chưởng",
    image: "assets/images/Oquanchuong.jpg",
    description: "Ô Quan Chưởng, hay còn gọi là Ô Đông Hà hoặc Ô Cửa Đông, là duy nhất trong số cửa "
      "ô của Thành Thăng Long còn tồn tại cho đến ngày nay. Công trình này đã được công nhận là "
      "di tích lịch sử quốc gia vào ngày 19/01/2022. \n\n"
      "Tên gọi 'Ô Quan Chưởng' được người dân đặt để tưởng nhớ các quan chưởng và tướng sĩ dũng cảm "
      "đã hy sinh để bảo vệ cổng thành và đảm bảo sự bình yên cho người dân. Công trình này được "
      "xây dựng theo kiểu vọng lâu 2 tầng, một dạng kiến trúc đặc trưng của triều Nguyễn, sử dụng "
      "gạch vồ có kích thước lớn với chiều rộng 20m và chiều dài 7m. Loại gạch này cũng được sử dụng "
      "trong nhiều di tích lịch sử khác tại Hà Nội, như Văn Miếu Quốc Tử Giám."
    ,
    address: "Phố Thanh Hà, quận Hoàn Kiếm, tp Hà Nội",
  ),
  // Thêm các di tích lịch sử khác nếu cần
];
