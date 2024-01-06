class Review {
  late String name;
  late String? image;
  late String time;
  late String reviewContent;
  late int numOfStar;
  Review({
    required this.name,
    required this.time,
    required this.reviewContent,
    required this.numOfStar,
    this.image,
  });
}
