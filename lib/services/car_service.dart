import 'dart:convert';

import 'package:prac/constants/endpoints.dart';

import '../models/user.dart';
import 'network_services.dart';

class CarService{

  final _networkService = NetworkService();

  Future<List<Car>> getCars() async {
    final List<Car> cars = [];
    final response = await _networkService.getRequest(ApiEndpoint.cars);
    final data = jsonDecode(response);

    for(var car in data){
      cars.add(Car.fromJson(car));
    }
    return cars;
  }

}