

class SubNavModel {
  final String icon;
  final String title;
  final String url;
  final bool hideAppBar;

  SubNavModel({this.icon, this.title, this.url, this.hideAppBar});

  factory SubNavModel.fromJson(Map<String, dynamic> json) {
    return SubNavModel(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
      hideAppBar: json['hideAppBar']
    );
  } 
}
