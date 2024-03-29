import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:xcly_app/model/home_model.dart';
import 'package:xcly_app/common/net/api.dart';

const HOME_URL = 'http://www.devio.org/io/flutter_app/json/home_page.json';

// class HomeDao {
//   static Future<HomeModel> fetch() async {
//     final response = await http.get(HOME_URL);
//     if(response.statusCode == 200) {
//       Utf8Decoder utf8decoder = Utf8Decoder();
//       var result = json.decode(utf8decoder.convert(response.bodyBytes));
//       return HomeModel.fromJson(result);
//     } else {
//       throw Exception('请求服务端数据出错');
//     }
//   }
// }

class HomeDao {
  static Future<HomeModel> fetch() async {
    final result = await HttpMagger().netFetch(HOME_URL, null, null, null);
    //if (result.code == 200 && result != null) {
      return result;
    //} else {
    //  throw Exception(result.data);
    //}
  }
}