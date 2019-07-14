import 'package:xcly_app/model/hotel_model.dart';
import 'package:xcly_app/model/flight_model.dart';
import 'package:xcly_app/model/travel_model.dart';

/// grid model
class GridNavModel {
  final HotelModel hotel;
  final FlightModel flight;
  final TravelModel travel;

  GridNavModel({this.hotel, this.flight, this.travel});

  factory GridNavModel.fromJson(Map<String, dynamic> json) {
    return json != null
        ? GridNavModel(
            hotel: HotelModel.fromJson(json['hotel']),
            flight: FlightModel.fromJson(json['flight']),
            travel: TravelModel.fromJson(json['travel']),
          )
        : null;
  }
}
