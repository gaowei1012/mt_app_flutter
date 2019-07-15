
/// flight model
class FlightModel {
  final String startColor;
  final String endColor;
  final MainItem mainItem;
  final Item1Model item1;
  final Item2Model item2;
  final Item1Model item3;
  final Item1Model item4;

  FlightModel({this.startColor, this.endColor, this.mainItem, this.item1, this.item2, this.item3, this.item4});

  factory FlightModel.fromJson(Map<String, dynamic> json) {
    return json != null ? FlightModel(
      startColor: json['startColor'],
      endColor: json['endColor'],
      mainItem: MainItem.fromJson(json['mainItem']),
      item1: Item1Model.fromJson(json['item1']),
      item2: Item2Model.fromJson(json['item2']),
      item3: Item1Model.fromJson(json['item3']),
      item4: Item1Model.fromJson(json['item4']),
    ) : null;
  }

  /// toJson() 
  Map<String, dynamic> toJson() {

  }
}

class MainItem {
  final String title;
  final String icon;
  final String url;

  MainItem({this.title, this.icon, this.url});

  factory MainItem.fromJson(Map<String, dynamic> json) {
    return json != null ? MainItem(
      title: json['title'],
      icon: json['icon'],
      url: json['url']
    ) : null;
  }
}

class Item1Model {
  final String title;
  final String url;
  final bool hideAppBar;

  Item1Model({this.title, this.url, this.hideAppBar});

  factory Item1Model.fromJson(Map<String, dynamic> json) {
    return json != null ? Item1Model(
      title: json['title'],
      url: json['url'],
      hideAppBar: json['hideAppBar']
    ) : null;
  }
}

class Item2Model {
  final String title;
  final String url;

  Item2Model({this.title, this.url});

  factory Item2Model.fromJson(Map<String, dynamic> json) {
    return json != null ? Item2Model(
      title: json['title'],
      url: json['url'],
    ) : null;
  }
}