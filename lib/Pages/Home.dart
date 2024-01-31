import 'package:flutter/material.dart';
import 'package:tasarimdeneme/app_info_list.dart';
import 'package:tasarimdeneme/widgets/hotel_view.dart';
import 'package:tasarimdeneme/widgets/listview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Good morning',style: TextStyle(fontWeight: FontWeight.normal),),
                        Text('Ticket app',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                            image: AssetImage(
                                    "images/tickets1.png"
                            )
                        )
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigoAccent
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.search_rounded,color: Colors.black,),
                      Text(
                        'Search',
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcomming Fligths',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('view fligths',)
                  ],
                ),


              ],
            ),
          ),
          const SizedBox(height: 20,),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: 5,left: 1),
            child: Row(
              children: [
                Listview(),
                //SizedBox(width: 20,),
                Listview(),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                Text('view all'),
              ],
            ),
          ),
          const SizedBox(height: 20,),
           SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children : hotelList.map((value) => HotelView(hotel: value)).toList(),
              ),
          ),
        ],
      ),


    );
  }
}
