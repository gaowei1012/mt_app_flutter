class BannerModel {
  final String icon;
  final String url;

  BannerModel({this.icon, this.url});

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return json != null ? BannerModel(
      icon: json['icon'],
      url: json['url']
    ) : null;
  }
}