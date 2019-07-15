

class TravelModel {
  final String startColor;
  final String endColor;
  final MainItemModel mainItem;
  final Item1Model item1;
  final Item1Model item2;
  final Item2Model item3;
  final Item2Model item4;

  TravelModel({this.startColor, this.endColor, this.mainItem, this.item1, this.item2, this.item3, this.item4});

  factory TravelModel.fromJson(Map<String, dynamic> json) {
    return json != null ? TravelModel(
      startColor: json['startColor'],
      endColor: json['endColor'],
      mainItem: MainItemModel.fromJson(json['mainItem']),
      item1: Item1Model.fromJson(json['item1']),
      item2: Item1Model.fromJson(json['item2']),
      item3: Item2Model.fromJson(json['item2']),
      item4: Item2Model.fromJson(json['item4'])
    ) : null;
  }
}

class MainItemModel {
  final String title;
  final String icon;
  final String url;
  final bool hideAppBar;
  final String statusBarColor;

  MainItemModel({this.title, this.icon, this.url, this.hideAppBar, this.statusBarColor});

  /// 代码未完成
  factory MainItemModel.fromJson(Map<String, dynamic> json) {
    return json != null ? MainItemModel() : null;
  }
}

class Item1Model {
  final String title;
  final String url;
  final String statusBarColor;
  final bool hideAppBar;

  Item1Model({this.title, this.url, this.statusBarColor, this.hideAppBar});

  factory Item1Model.fromJson(Map<String, dynamic> json) {
    return json != null ? Item1Model(
      title: json['title'],
      url: json['url'],
      statusBarColor: json['statusBarColor'],
      hideAppBar: json['hideAppBar'],
    ) : null;
  }
}

class Item2Model {
  final String title;
  final String url;
  final bool hideAppBar;

  Item2Model({this.title, this.url, this.hideAppBar});

  factory Item2Model.fromJson(Map<String, dynamic> json) {
    return json != null ? Item2Model(
      title: json['title'],
      url: json['url'],
      hideAppBar: json['hideAppBar']
    ) : null;
  }
}