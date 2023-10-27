import 'package:flutter/material.dart';
import 'package:tasarimdeneme/getwidth.dart';
class HotelView extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Container(
      height: 450,
      //padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15,),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.indigoAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 4,
            spreadRadius: 2
          )
        ]
      ),
      width: size.width*0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage(
                  'images/${hotel['image']}',)
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text('Hotel Phaselise with incredible services and pearl beach',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15)),
          SizedBox(height: 10,),
          Text('${hotel['destination']}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(height: 10,),
          Text('price per Eve\$${hotel['price']}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25)),
        ],
      ),
    );
  }
}
