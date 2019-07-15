// import 'package:xcly_app/model/hotel_model.dart';
// import 'package:xcly_app/model/flight_model.dart';
// import 'package:xcly_app/model/travel_model.dart';

// import 'package:xcly_app/model/flight_model.dart';
// import 'package:xcly_app/model/travel_model.dart';


/// grid model
class GridNavModel {
  final HotelModel hotel;
  final FlightModel flight;
  final TravelModel travel;

  GridNavModel({this.hotel, this.flight, this.travel});

  factory GridNavModel.fromJson(Map<String, dynamic> json) {
    return json != null /// 如果返回的json是空数据
        ? GridNavModel(
            hotel: HotelModel.fromJson(json['hotel']),
            flight: FlightModel.fromJson(json['flight']),
            travel: TravelModel.fromJson(json['travel']),
          )
        : null;
  }
}

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
    ) : null;
  }
}

class FlightModel {
  final String startColor;
  final String endColor;
  final MainItemModel mainItem;
  final FlightItem1Model item1;
  final FlightItem2Model item2;
  final FlightItem1Model item3;
  final FlightItem1Model item4;

  FlightModel({this.startColor, this.endColor, this.mainItem, this.item1, this.item2, this.item3, this.item4});

  factory FlightModel.fromJson(Map<String, dynamic> json) {
    return json != null ? FlightModel(
      startColor: json['startColor'],
      endColor: json['endColor'],
      mainItem: MainItemModel.fromJson(json['mainItem'])
    ) : null;
  }
}

class TravelModel {
  final String startColor;
  final String endColor;
  final TravelMainItemModel mainItem;
  final TravelItem1Model item1;
  final TravelItem2Model item2;
  final TravelItem2Model item3;
  final TravelItem2Model item4;

  TravelModel({this.startColor, this.endColor, this.mainItem, this.item1, this.item2, this.item3, this.item4});

  factory TravelModel.fromJson(Map<String, dynamic> json) {
    return json != null ? TravelModel(

    ) : null;
  }
}

class TravelMainItemModel {
  final String title;
  final String url;
  final String icon;
  final bool hideAppBar;
  final String statusBarColor;

  TravelMainItemModel({this.title, this.url, this.icon, this.hideAppBar, this.statusBarColor});

  factory TravelMainItemModel.fromJson(Map<String, dynamic> json) {
    return json != null ? TravelMainItemModel(
      title: json['title'],
      url: json['url'],
      icon: json['icon'],
      hideAppBar: json['hideAppBar'],
      statusBarColor: json['statusBarColor']
    ) : null;
  }
}

class TravelItem1Model {

  final String title;
  final String icon;
  final String url;
  final bool  hideAppBar;
  final String statusBarColor;

  TravelItem1Model({this.title, this.icon, this.url, this.hideAppBar, this.statusBarColor});

  factory TravelItem1Model.fromJson(Map<String, dynamic> json) {
    return json != null ? TravelItem1Model(
      title: json['title'],
      icon: json['icon'],
      url: json['url'],
      hideAppBar: json['hideAppBar'],
      statusBarColor: json['statusBarColor']
    ) : null;
  }
}

class TravelItem2Model {

  final String title;
  final String icon;
  final String url;
  final bool  hideAppBar;

  TravelItem2Model({this.title, this.icon, this.url, this.hideAppBar});

  factory TravelItem2Model.fromJson(Map<String, dynamic> json) {
    return json != null ? TravelItem2Model(
      title: json['title'],
      icon: json['icon'],
      url: json['url'],
      hideAppBar: json['hideAppBar'],
    ) : null;
  }
}

class MainItemModel {
  final String title;
  final String icon;
  final String url;

  MainItemModel({this.title, this.icon, this.url});

  factory MainItemModel.fromJson(Map<String, dynamic> json) {
    return json != null ? MainItemModel(
      title: json['title'],
      icon: json['icon'],
      url: json['url']
    ) : null;
  }
}

class  Item1Model {
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

class  Item2Model {
  final String title;
  final String url;

  Item2Model({this.title, this.url});

  factory Item2Model.fromJson(Map<String, dynamic> json) {
    return json != null ? Item2Model(
      title: json['title'],
      url: json['url']
    ) : null;
  }

}

class  Item3Model {
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

class FlightItem1Model {
  final String title;
  final String url;
  final bool hideAppBar;

  FlightItem1Model({this.title, this.url, this.hideAppBar});

  factory FlightItem1Model.fromJson(Map<String, dynamic> json) {
    return json != null ? FlightItem1Model(
      title: json['title'],
      url: json['url'],
      hideAppBar: json['hideAppBar']
    ) : null;
  }
}

class FlightItem2Model {
  final String title;
  final String url;

  FlightItem2Model({this.title, this.url});

  factory FlightItem2Model.fromJson(Map<String, dynamic> json) {
    return json != null ? FlightItem2Model(
      title: json['title'],
      url: json['url']
    ) : null;
  }
}