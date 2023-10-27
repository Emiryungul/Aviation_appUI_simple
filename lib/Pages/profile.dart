import 'package:flutter/material.dart';
import 'package:tasarimdeneme/getwidth.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size=Applayout.getSize(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 55,left: 22,right: 22),
        children: [
          Row(

            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("images/gradient3.jpeg"),
                    fit: BoxFit.cover)
                ),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Profile View',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      SizedBox(width: 80,),
                      Text('Edit'),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text('Airporter',style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 30,),
                  Container(child:
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 5,),
                      Text('Premium edition',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),

                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),

                  ),),

                ],
              ),

            ],
          ),
          SizedBox(height: 30,),
          Container(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.lightbulb_circle,color: Colors.white,size: 45,),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('New Campains and new discounts',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        SizedBox(height: 10,),
                        Text('you had 150 flights in a year',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white),)
                      ],
                    ),
                  ],
                ),
                margin: EdgeInsets.all(0),
                height: 70,
                width: 337,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigo,
                ),
              ),
          SizedBox(height: 24,),
          Text('Accumulated miles',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 45,),
          Center(child: Text('1925640',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45),)),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Miles',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),
              Text('9.09.2023',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('18903',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Airline Co',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Miles',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey),),
              Text('Received from',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey),),
            ],
          ),
          SizedBox(height: 35,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('24',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Pneuma',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Miles',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey),),
              Text('Received from',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey),),
            ],
          ),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('53 460',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Exuma',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Miles',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey),),
              Text('Received from',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey),),
            ],
          ),
          SizedBox(height: 45,),
          Center(child: Text('How to get more miles',style: TextStyle(color: Colors.blue,fontSize: 20),),)

        ],
      ),
    );
  }
}
