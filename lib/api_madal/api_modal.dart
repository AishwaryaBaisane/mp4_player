class VideoModal {
  List<Categories> categories;

  VideoModal({required this.categories});

  factory VideoModal.fromMap(Map m1) {
    return VideoModal(
        categories: (m1['categories'] as List)
            .map(
              (e) => Categories.fromMap(e),
            )
            .toList());
  }
}

class Categories {
  List<Video> videos;

  Categories({required this.videos});

  factory Categories.fromMap(Map m1) {
    return Categories(
      videos: (m1['videos'] as List).map((e) => Video.fromMap(e)).toList(),
    );
  }
}

class Video {
  String description;
  List<String> sources;
  String thumb;
  String title;

  Video({
    required this.description,
    required this.sources,
    required this.thumb,
    required this.title,
  });

  factory Video.fromMap(Map m1) => Video(
        description: m1["description"],
        sources: List<String>.from(m1['sources'].map((x) => x)),
        thumb: m1["thumb"],
        title: m1["title"],
      );
}
