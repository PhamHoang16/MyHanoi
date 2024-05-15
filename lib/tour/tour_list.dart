class TourList {
  final String name;
  final String description;
  final List<String> itinerary; // Danh sách lịch trình

  TourList({
    required this.name,
    required this.description,
    required this.itinerary,
  });

  static List<TourList> tours = [
    TourList(
      name: 'Old Quarter Walking Tour',
      description: 'Explore the historic Old Quarter streets',
      itinerary: [
        'Day 1: Visit Hoan Kiem Lake and Ngoc Son Temple',
        'Day 2: Explore the ancient streets of the Old Quarter',
        'Day 3: Discover local food and culture at Dong Xuan Market',
      ],
    ),
    TourList(
      name: 'Hoa Lo Prison Tour',
      description: 'Learn about the history of Hoa Lo Prison',
      itinerary: [
        'Day 1: Guided tour of Hoa Lo Prison',
        'Day 2: Learn about the Vietnamese struggle for independence',
        'Day 3: Reflect on the impact of war at the museum',
      ],
    ),
    TourList(
      name: 'Temple of Literature Tour',
      description: 'Visit the Temple of Literature and learn about its history',
      itinerary: [
        'Day 1: Explore the Temple of Literature complex',
        'Day 2: Learn about Vietnamese education and Confucianism',
        'Day 3: Visit the gardens and courtyards of the temple',
      ],
    ),
  ];

  static List<TourList> getTourList() {
    return tours;
  }
}
