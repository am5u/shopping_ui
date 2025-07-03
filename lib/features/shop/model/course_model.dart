class Course {
  final int id;
  final String title;
  final String description;
  final String category;
  final String price;
  final String imageUrl;
  final String instructor;
  final String duration;
  final String level;
  final double rating;
  final int students;
  final bool isNetwork;
  final String url;

  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.imageUrl,
    required this.instructor,
    required this.duration,
    required this.level,
    required this.rating,
    required this.students,
    required this.isNetwork,
    required this.url,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      instructor: json['instructor'],
      duration: json['duration'],
      level: json['level'],
      rating: json['rating'].toDouble(),
      students: json['students'],
      isNetwork: json['isNetwork'] ?? false,
      url: json['url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'price': price,
      'imageUrl': imageUrl,
      'instructor': instructor,
      'duration': duration,
      'level': level,
      'rating': rating,
      'students': students,
      'isNetwork': isNetwork,
      'url': url,
    };
  }
}
