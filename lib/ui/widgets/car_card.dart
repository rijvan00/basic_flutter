import 'package:flutter/material.dart';

import '../../models/user.dart';

class CarCard extends StatelessWidget {
  const CarCard({Key? key, required this.car}) : super(key: key);
  final Car car;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(car.model, style: const TextStyle(fontSize: 20),),
          const SizedBox(height: 10,),
          Text(car.make, style: const TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}
