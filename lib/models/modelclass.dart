class NewsArticle {
  final String title;
  final String description;
  final String urlToImage;

  NewsArticle({
    required this.title,
    required this.description,
    required this.urlToImage,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] ?? 'No title available',  // Handle null title
      description: json['description'] ?? 'No description available',  // Handle null description
      urlToImage: json['urlToImage'] ?? 'https://via.placeholder.com/150',  // Handle null image with a placeholder
    );
  }
}
