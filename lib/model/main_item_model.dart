
// main item model
class MainItemModel {
  final String title;
  final String icon;
  final String url;
  final String statusBarColor;

  MainItemModel({this.title, this.icon, this.url, this.statusBarColor});

  factory MainItemModel.fromJson(Map<String, dynamic> json) {
    return json !=null? MainItemModel(
      title: json['title'],
      icon: json['icon'],
      url: json['url'],
      statusBarColor: json['statusBarColor']
    ) : null;
  }
}