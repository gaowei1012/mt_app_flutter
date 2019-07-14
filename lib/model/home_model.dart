import 'package:xcly_app/model/banner_model.dart';
import 'package:xcly_app/model/config_model.dart';
import 'package:xcly_app/model/common_model.dart';
import 'package:xcly_app/model/grid_nav_model.dart';
import 'package:xcly_app/model/sub_nav_model.dart';
import 'package:xcly_app/model/sales_box_model.dart';


// 首页model类
class HomeModel {
  final ConfigModel config;
  final List<BannerModel> bannerList;
  final List<CommonModel> localNavList;
  final GridNavModel gridNav;
  final List<SubNavModel> subNavList;
  final SalesBoxModel salesBox;

  HomeModel({this.config, this.bannerList, this.localNavList, this.gridNav, this.subNavList, this.salesBox});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    var bannerListJson = json['bannerList'] as List;
    List<BannerModel> bannerList = bannerListJson.map((i) => BannerModel.fromJson(i)).toList();
    var localNavListJson = json['localNavList'] as List;
    List<CommonModel> localNavList = localNavListJson.map((i) => CommonModel.fromJson(i)).toList();
    var subNavListJson = json['subNavList'] as List;
    List<SubNavModel> subNavList = subNavListJson.map((i) => SubNavModel.fromJson(i)).toList();
    return HomeModel(
      config: ConfigModel.fromJson(json['config']),
      bannerList: bannerList,
      localNavList: localNavList,
      gridNav: GridNavModel.fromJson(json['gridNav']),
      subNavList: subNavList,
      salesBox: SalesBoxModel.fromJson(json['salesBox'])
    );
  }
}