import 'package:flutter/material.dart';
import 'package:prac/services/car_service.dart';
import 'package:prac/ui/widgets/car_card.dart';

import '../models/user.dart';

class CarsList extends StatefulWidget {
  const CarsList({Key? key}) : super(key: key);

  @override
  State<CarsList> createState() => _CarsListState();
}

class _CarsListState extends State<CarsList> {

  List<Car> cars = [];
  final CarService _service = CarService();
  @override
  void initState() {
    super.initState();
    getLoadCars();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Cars", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) => CarCard(car: cars[index]),
      ),
    );
  }

  void getLoadCars(){
    _service.getCars().then((value){
      cars = value;
      setState(() {});
    });
  }

}
