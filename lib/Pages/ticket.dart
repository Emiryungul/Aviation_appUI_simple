import 'package:flutter/material.dart';
import 'package:tasarimdeneme/getwidth.dart';
import 'package:tasarimdeneme/widgets/listview.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: const Text("Tickets\nyour tickets",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 15,),
          Container(
            width: size.width*.44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            child: Row(
              children: [
                Container(
                  width: size.width*.44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const Center(child: Text('Tickets',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 24))),
                ),
                FittedBox(
                  child: Container(
                    width: size.width*.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      //color: Colors.white70,
                    ),
                    child: const Center(child: Text('Hotels',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 24))),
                  ),
                )
              ],

            ),
          ),
          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.all(16),
            height: 700,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade400
            ),
            child: Column(
              children: [
                const Listview(isColor: true,),
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  child: const Row(
                    children: [
                      Text('Airport Code',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      Spacer(),
                      Text('110265420',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  child: const Row(
                    children: [
                      Text('active'),
                      Spacer(),
                      Text('for maps usage'),
                    ],
                  ),
                ),
                Expanded(child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return  Flex(direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(constraints.constrainWidth()~/15, (index) =>  const SizedBox(
                        width: 5,height: 1,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color:Colors.black,
                          ),
                        ),
                      )),
                    );

                  },

                )),
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  child: const Row(
                    children: [
                      Text('Ticket code',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      Spacer(),
                      Text('BG2ZRTYQZ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  child: const Row(
                    children: [
                      Text('Copy'),
                      Spacer(),
                      Text('use it for info'),
                    ],
                  ),
                ),

                Expanded(child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return  Flex(direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(constraints.constrainWidth()~/15, (index) =>  const SizedBox(
                        width: 5,height: 1,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color:Colors.black,
                          ),
                        ),
                      )),
                    );

                  },

                )),
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  child: const Row(
                    children: [
                      Text('Vısa***2382',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      Spacer(),
                      Text('862',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  child: const Row(
                    children: [
                      Text('card info'),
                      Spacer(),
                      Text('CVC'),
                    ],
                  ),
                ),
                Expanded(child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return  Flex(direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(constraints.constrainWidth()~/15, (index) =>  const SizedBox(
                        width: 5,height: 1,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color:Colors.black
                          ),
                        ),
                      )),
                    );

                  },

                )),
                const SizedBox(height: 12,),
                const Listview(isColor: true,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
