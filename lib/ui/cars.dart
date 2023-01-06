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
  final CarService _service = CarService();

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
      body: FutureBuilder<List<Car>>(
        future: _service.getCars(),
        builder: (BuildContext context, AsyncSnapshot<List<Car>> snapshot) {

          if(snapshot.data == null){
            return const Center(child: CircularProgressIndicator(),);
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => CarCard(car: snapshot.data![index]),
          );
        },
      ),
    );
  }
}
