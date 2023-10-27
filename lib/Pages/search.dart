import 'package:flutter/material.dart';
import 'package:tasarimdeneme/getwidth.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            child: const Text(
              'What are\nyou looking for',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
          const SizedBox(height:10 ,),
          Container(
            width: size.width*.44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orange,
            ),
            child: Row(
              children: [
                  Container(
                    width: size.width*.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                    child: const Center(child: Text('Tickets',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 34))),
                  ),
                  FittedBox(
                    child: Container(
                      width: size.width*.44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent,
                      ),
                      child: const Center(child: Text('Hotels',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 34))),
                    ),
                  )
              ],

            ),
          ),
          const SizedBox(height: 30,),
          Container(
              height: 40,
              width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            child: const Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.flight_land),
                SizedBox(width: 5,),
                Text('Land',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            )
          ),
          const SizedBox(height: 35,),
          Container(
              height: 40,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: const Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.flight_takeoff),
                  SizedBox(width: 5,),
                  Text('Takeoff',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              )
          ),
          const SizedBox(height: 20,),
          Container(
            height: 40,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.indigo
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 55,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Upcoming Flights',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
              Text('View All',style: TextStyle(fontSize: 20,color: Colors.black38),)
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: 500,
                width: size.width*0.42,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      height: 180,
                      width: size.width*.42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                          image: const DecorationImage(
                              fit: BoxFit.cover ,
                              image: AssetImage(
                                  "images/airplane1.jpg"
                              )
                          )
                      ),

                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Confirm your flights departure time and terminal. Flight schedules can change, so its essential to verify this information shortly before leaving for the airport.'
                     ),
                  ],
                ),
              ),
              //yeşil kutu
              Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('          DONT FORGET\nto use monthly discounts\n\n every thuesday of the 3rd   week!',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),),
                      ],
                    ),
                    height: 170,
                    width: size.width*0.44,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.greenAccent,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(35),
                    width: size.width*0.44,
                    height: 250,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ],
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.red
                    ),
                    child: Center(
                      child: Text(
                        'Coming Soon...',style: TextStyle(color: Colors.white,fontSize: 25),
                      ),
                    ),
                  )
                  
                ],
              ),
              // turuncu kutu

            ],
          )
        ],
      ),
    );
  }
}
