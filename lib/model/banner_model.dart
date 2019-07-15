/// banner model
/// 定义一个model类
class BannerModel {
  
  final String icon;
  final String url;

  /// 添加构造方法
  BannerModel({this.icon, this.url});

  /// to json 
  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      icon: json['icon'],
      url: json['url']
    );
  }
}