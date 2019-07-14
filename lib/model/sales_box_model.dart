
/// SalesBoxModel
class SalesBoxModel {
  final String icon;
  final String moreUrl;
  final BigCardModel bigCard1;
  final BigCardModel bigCard2;
  final BigCardModel smallCard1;
  final BigCardModel smallCard2;
  final BigCardModel smallCard3;
  final BigCardModel smallCard4;

  SalesBoxModel({this.icon, this.moreUrl, this.bigCard1, this.bigCard2, this.smallCard1, this.smallCard2, this.smallCard3, this.smallCard4});

  factory SalesBoxModel.fromJson(Map<String, dynamic> json) {
    return SalesBoxModel(
      icon: json['icon'],
      moreUrl: json['moreUrl'],
      bigCard1: BigCardModel.fronJson(json['bigCard1']),
      bigCard2: BigCardModel.fronJson(json['bigCard2']),
      smallCard1: BigCardModel.fronJson(json['smallCard1']),
      smallCard2: BigCardModel.fronJson(json['smallCard2']),
      smallCard3: BigCardModel.fronJson(json['smallCard3']),
      smallCard4: BigCardModel.fronJson(json['smallCard4']),
    );
  }

}

class BigCardModel {
  final String icon;
  final String url;
  final String title;

  BigCardModel({this.icon, this.url, this.title});

  factory BigCardModel.fronJson(Map<String, dynamic> json) {
    return BigCardModel(
      icon: json['icon'],
      url: json['url'],
      title: json['title'],
    );
  }
}