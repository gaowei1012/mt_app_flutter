/// config model
class ConfigModel {
  final String searchUrl;

  ConfigModel({this.searchUrl});

  factory ConfigModel.fromJson(Map<String, dynamic> json) {
    return json != null ? ConfigModel(searchUrl: json['searchUrl']) : null;
  }
}
