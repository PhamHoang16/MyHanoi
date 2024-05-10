import 'package:flutter/material.dart';

class EventPage {
  final String name;
  final String image;
  final String date; // Thêm ngày diễn ra
  final String location;
  final String description; // Thêm mô tả chi tiết


  EventPage({
    required this.name,
    required this.image,
    required this.date,
    required this.location,
    required this.description,
  });
}

final List<EventPage> events = [
  EventPage(
    name: "Thăm Lăng Bác",
    image: "assets/images/langbac.jpg",
    date: "20/05/2024",
    location: "Hanoi, Vietnam",
    description: "Thăm Lăng Bác là một trải nghiệm tuyệt vời để hiểu về lịch sử Việt Nam.",

  ),
  EventPage(
    name: "Marathon Hanoi 2024",
    image: "assets/images/marathon.jpg",
    date: "15/06/2024",
    location: "Hanoi, Vietnam",
    description: "Cuộc marathon hàng năm tại Hà Nội thu hút hàng nghìn vận động viên từ khắp nơi.",
  ),
  EventPage(
    name: "Football Championship",
    image: "assets/images/football.png",
    date: "30/07/2024",
    location: "Hanoi, Vietnam",
    description: "Giải bóng đá quốc gia đỉnh cao với sự tham gia của các đội bóng hàng đầu.",
  ),
];
