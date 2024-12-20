class Tweet {
  int? id;
  String? profile;
  DateTime? createdDate;
  String? author;
  String? message;

  Tweet(this.id, this.profile, this.createdDate, this.author, this.message);

  Tweet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profile = json['profile'];
    createdDate =
        DateTime.fromMicrosecondsSinceEpoch(json['created_date'] * 100_000);
    author = json['author'];
    message = json['message'];
  }
}
