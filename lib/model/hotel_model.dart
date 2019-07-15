import 'package:xcly_app/model/main_item_model.dart';

/// HotelModel
class HotelModel {
  final String startColor;
  final String endColor;
  final MainItemModel mainItem;
  final Item1Model item1;
  final Item2Model item2;
  final Item3Model item3;
  final Item3Model item4;

  HotelModel({this.startColor, this.endColor, this.mainItem, this.item1, this.item2, this.item3, this.item4});

  factory HotelModel.fromJson(Map<String, dynamic> json) {
    return json != null ? HotelModel(
      startColor: json['startColor'],
      endColor: json['endColor'],
      mainItem: MainItemModel.fromJson(json['mainItem']),
      item1: Item1Model.fromJson(json['item1']),
      item2: Item2Model.fromJson(json['item2']),
      item3: Item3Model.fromJson(json['item3']),
      item4: Item3Model.fromJson(json['item4']),
    ) : null;
  }
}

class Item1Model {
  final String title;
  final String url;
  final String statusBarColor;

  Item1Model({this.title, this.url, this.statusBarColor});

  factory Item1Model.fromJson(Map<String, dynamic> json) {
    return json != null ? Item1Model(
      title: json['title'],
      url: json['url'],
      statusBarColor: json['statusBarColor'] 
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

class Item3Model {
  final String title;
  final String url;
  final bool hideAppBar;

  Item3Model({this.title, this.url, this.hideAppBar});

  factory Item3Model.fromJson(Map<String, dynamic> json) {
    return json != null ? Item3Model(
      title: json['title'],
      url: json['url'],
      hideAppBar: json['hideAppBar']
    ) : null;
  }
}
