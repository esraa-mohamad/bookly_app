class ImageLinks {
  ImageLinks({
      required this.smallThumbnail,
      required this.thumbnail,});

  factory ImageLinks.fromJson(Map<String , dynamic> json)=> ImageLinks(
      smallThumbnail : json['smallThumbnail'] as String,
      thumbnail : json['thumbnail'] as String,
  );
  String smallThumbnail;
  String thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }

}