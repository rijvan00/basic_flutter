import 'dart:convert';
import 'dart:developer';

import 'package:prac/constants/endpoints.dart';

import '../models/user.dart';
import 'network_services.dart';

class CarService{

  final _networkService = NetworkService();

  Future<List<Car>> getCars() async {
    log('Get Cars Fired!');
    final response = await _networkService.getRequest(ApiEndpoint.cars);
    final List data = jsonDecode(response);
    return data.map((e) => Car.fromJson(e)).toList();
  }
}