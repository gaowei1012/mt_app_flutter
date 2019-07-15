import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:xcly_app/common/dao/home_dao.dart';
import 'dart:convert';

const APPBAR_OFFSET_TOP = 100;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imageUrl = [
    'http://www.devio.org/io/flutter_app/img/banner/100h10000000q7ght9352.jpg',
    'https://dimg03.c-ctrip.com/images/fd/tg/g1/M03/7E/19/CghzfVWw6OaACaJXABqNWv6ecpw824_C_500_280_Q90.jpg',
    'https://dimg04.c-ctrip.com/images/300h0u000000j05rnD96B_C_500_280.jpg'
  ];
  double appBarAlpha = 0;
  String resultString = "";

  @override
  void initState() { 
    super.initState();
    loadData();/// 加载homepage data
  }


  _onScroll(offset) {
    double aplha = offset / APPBAR_OFFSET_TOP;
    if(aplha < 0) {
      aplha = 0;
    } else if (aplha > 1) {
      aplha = 1;
    }
    setState(() {
      appBarAlpha = aplha;
    });
    print(appBarAlpha);
  }

  loadData() async {
    // try {
      var result = await HomeDao.fetch();
      setState(() {
        resultString = json.encode(result).toString();
        print(resultString);
      });
    // } catch(e) {
      // throw e.toString();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: Text('首页'),),
        body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: NotificationListener(
                onNotification: (scrollNotification) {
                  if (scrollNotification is ScrollUpdateNotification &&
                      scrollNotification.depth == 0) {
                    _onScroll(scrollNotification.metrics.pixels);
                  }
                },
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 160,
                      child: Swiper(
                        itemCount: _imageUrl.length,
                        autoplay: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Image.network(_imageUrl[index],
                              fit: BoxFit.fill);
                        },
                        pagination: SwiperPagination(),
                      ),
                    ),
                    Container(
                      height: 900,
                      child: Text(resultString),
                    )
                  ],
                ),
              )
            ),
          Opacity(
            opacity: appBarAlpha,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('首页'),
                ),
              ),
            ),
          )
        ],
    ));
  }
}
