import 'package:flutter/material.dart';
import 'package:tasarimdeneme/getwidth.dart';
import 'package:tasarimdeneme/widgets/containerwidget.dart';

class Listview extends StatelessWidget {
  final bool? isColor;
  const Listview({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
       margin: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Mavi kart kısmı
            Container(

              padding: EdgeInsets.all(16),
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular( 20)),
                color: isColor==null? Colors.indigoAccent:Colors.grey.shade400,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                       Text("IST", style: isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),
                      Expanded(child: Container()),
                      const ContainerWidget(),
                      Expanded(child: Stack(
              children: [
                  SizedBox(
                  height: 24,
                   child: LayoutBuilder(

                  builder: (BuildContext context, BoxConstraints constraints) {
                    print("the width is ${constraints.constrainWidth()}");
                    return  Flex(direction:Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate((constraints.constrainWidth()/6).floor() , (index) =>  SizedBox(
                        width: 3,height: 1,child: DecoratedBox(decoration: BoxDecoration(
                          color: isColor==null? Colors.white:Colors.black
                      ),),
                      )),
                    );
                  },

                ),
              ),
              Center(child: Transform.rotate(angle: 1.5,child:Icon(Icons.airplanemode_active,color:isColor==null? Colors.white:Colors.black,))),
            ]
        ), //burası neydi aq
                      ),
                      const ContainerWidget(),
                      Expanded(child: Container()),
                       Text("LDN",style: isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),

                    ],
                  ),
                   Row(
                    children: [
                      Text("ıstanbul",style: isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),
                      Spacer(),
                      Text("9pm-8am",style: isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),
                      Spacer(),
                      Text("london",style: isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),
                    ],
                  )
                ],
              ),
            ),
            // turuncu kart orta kısmı
            Container(
                color:isColor==null? Colors.orange:Colors.grey.shade400,
              child:  Row(
                children: [
                       SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                color:isColor==null? Colors.white:Colors.grey.shade400,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),

                              )
                            )
                        ),
                      ),
                      Expanded(child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return  Flex(direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/15).toInt(), (index) =>  SizedBox(
                              width: 5,height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color:isColor==null? Colors.white:Colors.black,
                                ),
                              ),
                            )),
                          );

                        },

                      )),
                       SizedBox(
                      height: 20,
                      width: 10,
                       child: DecoratedBox(
                        decoration: BoxDecoration(
                            color:isColor==null? Colors.white:Colors.grey.shade400,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),

                            )
                        )
                    ),
                  ),


                ],
              ),
            ),
            // turuncu kart alt kısmı
            Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular( 20)),
                color:isColor==null? Colors.orange:Colors.grey.shade400,
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                      children: [
                        Column(
                          children: [
                            Text('DATE',style: isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),
                            Text('1 MAY',style: isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),

                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text('DEPARTURE',style: isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),
                            Text('9.30 AM',style:  isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text('SEAT',style: isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),
                            Text('31',style: isColor==null? TextStyle(fontWeight: FontWeight.bold,color: Colors.white):TextStyle(color: Colors.black),),
                          ],
                        )
                      ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );

  }
}
