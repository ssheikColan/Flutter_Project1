import 'package:deverllet/transferfunds.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(receipt());
}
class receipt extends StatelessWidget {
  const receipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
              AppbarWidget(context),
              paymentWidget(context),
              // Stack(children: <Widget>[
                containerWidget(context),
                // logoWidget(context),
                // numberWidget(context),
                // storeWidget(context),
              continueWidget(context),
              // ]),


            ]),
          ),
        ),
      ),
    );
  }


  Widget AppbarWidget(BuildContext context) {
    return AppBar(
      title: Align(alignment: Alignment.center,
          child: Text('Receipt', style: TextStyle(fontSize: 25.0,))),
      toolbarHeight: 90,

      backgroundColor: Color(0xff31BBC5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(60),
        ),
      ),
    );
  }

  Widget paymentWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 20),
      child: Align(
          alignment: Alignment.center,
          child: Text("Payment Successful", style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold,))),
    );
  }

  Widget containerWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 20, left: 20),
      child: Container(
        height: 550,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/subtractnew.png"), fit: BoxFit.fill),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          color: Colors.transparent,
          // borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(30.0),
          //   bottomRight: Radius.circular(30.0),
          // ),
        ),

        child: Column(children: [
          numberWidget(context),
          logoWidget(context),
          storeWidget(context),
          itemboughtWidget(context),
          // chocolateWidget(context),
          // granulatedWidget(context),
          // dietdWidget(context),
          tableWidget(context),
          paymentnewWidget(context),
          paymenttableWidget(context),
        ],)




      ),
    );
  }




  Widget numberWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, top: 10),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text("#1413", style: TextStyle(
            fontSize: 18, color: Colors.grey,))),
    );
  }

  Widget logoWidget(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/www.png',
        fit: BoxFit.fill,
        height: 50,
        width: 70,
      ),
    );
  }
  Widget storeWidget(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.only(left: 40, top: 20,right: 50),
      child: Column(
        children: [

          Row(
            children: [
              Text("Store",style:TextStyle(fontSize: 14,color: Colors.grey, )),
              Spacer(),
              Text("Shoprite",style:TextStyle(fontSize: 14,color: Colors.black87)),
            ],
          ),

          Divider(
            color: Colors.white,
            height: 20,
            thickness: 2,

          ),


          Row(
            children: [
              Text("Seller’s Name",style:TextStyle(fontSize: 14,color: Colors.grey)),
              Spacer(),
              Text("John Stewart",style:TextStyle(fontSize: 14,color: Colors.black87)),
            ],
          ),
          Divider(
            color: Color(0xffF2F2F7),
            height: 25,
            thickness: 2,

          ),
          //
          // Row(
          //   children: [
          //     Text("VAT",style:TextStyle(fontSize: 17,color: Colors.black)),
          //     Spacer(),
          //     Text("\$4",style:TextStyle(fontSize: 17,color: Colors.grey)),
          //   ],
          // ),
          //
          // Divider(
          //   color: Color(0xffF2F2F7),
          //   height: 25,
          //   thickness: 2,
          //
          // ),
          // Row(
          //   children: [
          //     Text("Coupon",style:TextStyle(fontSize: 17,color: Colors.black)),
          //     Spacer(),
          //     Text("\-\$10",style:TextStyle(fontSize: 17,color: Colors.greenAccent)),
          //   ],
          // ),

        ],),
    );
  }


  Widget itemboughtWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, top: 0),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text("ITEMS BOUGHT", style: TextStyle(
            fontSize: 14, color: Colors.grey,))),
    );
  }

  Widget tableWidget(BuildContext context) {
    return Column(
        children:<Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: Text("Table",textScaleFactor: 2,style: TextStyle(fontWeight:FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),

            child: Table(

              columnWidths: {
                0 :FlexColumnWidth(3),
                1 :FlexColumnWidth(1),
                2 : FlexColumnWidth(1)
              },

              // textDirection: TextDirection.rtl,
              // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              // border:TableBorder.all(width: 2.0,color: Colors.red),
              children: const [
                TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("Chocolate cake mix",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

               Padding(
                 padding: EdgeInsets.all(3.0),
                 child: Text("x1",style:TextStyle(fontSize: 14,color: Colors.grey, )),
               ),

              Padding(
                padding: EdgeInsets.all(3.0),
                child: Text("\$25.00",style:TextStyle(fontSize: 14,color: Colors.black87)),
              ),

                    ]

                ),


                TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("Granulated sugar",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

              Padding(
                padding: EdgeInsets.all(3.0),
                child: Text("x2",style:TextStyle(fontSize: 14,color: Colors.grey, )),
              ),

              Padding(
                padding: EdgeInsets.all(3.0),
                child: Text("\$15.99",style:TextStyle(fontSize: 14,color: Colors.black87)),
              ),
                    ]
                ),
                TableRow(
                    children: [

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("Diet cola",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

              Padding(
                padding: EdgeInsets.all(3.0),
                child: Text("x8",style:TextStyle(fontSize: 14,color: Colors.grey, )),
              ),

              Padding(
                padding: EdgeInsets.all(3.0),
                child: Text("\$10.75",style:TextStyle(fontSize: 14,color: Colors.black87)),
              ),
                    ]
                ),
                TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("Pickle jar",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("x2",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("\$08.15",style:TextStyle(fontSize: 14,color: Colors.black87)),
                      ),
                    ]
                ), TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("Thyme leaves",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("x1",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("\$5.00",style:TextStyle(fontSize: 14,color: Colors.black87)),
                      ),
                    ]
                ),
              ],
            ),
          ),
        ]
    );
  }



  Widget paymentnewWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, top: 30),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text("PAYMENT", style: TextStyle(
            fontSize: 14, color: Colors.grey,))),
    );
  }



  Widget paymenttableWidget(BuildContext context) {
    return Column(
        children:<Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: Text("Table",textScaleFactor: 2,style: TextStyle(fontWeight:FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),

            child: Table(

              columnWidths: {
                0 :FlexColumnWidth(3),
                1 :FlexColumnWidth(1),
                2 : FlexColumnWidth(1)
              },

              // textDirection: TextDirection.rtl,
              // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              // border:TableBorder.all(width: 2.0,color: Colors.red),
              children: const [
                TableRow(
                    children: [

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("Items fee",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("x1",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("\$64.89",style:TextStyle(fontSize: 14,color: Colors.black87)),
                      ),

                    ]

                ),


                TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("V.A.T",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("x2",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("\$1.64",style:TextStyle(fontSize: 14,color: Colors.black87)),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("TOTAL",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("x8",style:TextStyle(fontSize: 14,color: Colors.grey, )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("\$66.63",style:TextStyle(fontSize: 14,color: Colors.black87)),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ]
    );
  }



  Widget continueWidget(BuildContext context){
    return    InkWell(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
        child: Container(

          height: 67,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 3)
              )
            ],
            color: Color(0xff31BBC5), borderRadius: BorderRadius.all(Radius.circular(40)),),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("CONTINUE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    )),
              ),
            ],
          ),
        ),
      ),
      onTap: () {

      },
    );

  }

































//2
//   Widget chocolateWidget(BuildContext context) {
//     return   Padding(
//       padding: EdgeInsets.only(left: 40, top: 20,right: 50),
//       child: Column(
//         children: [
//
//           Row(
//             children: [
//               Text("Chocolate cake mix",style:TextStyle(fontSize: 14,color: Colors.grey, )),
//               Spacer(),
//               Text("x1",style:TextStyle(fontSize: 14,color: Colors.grey, )),
//               Spacer(),
//               Text("\$25.00",style:TextStyle(fontSize: 14,color: Colors.black87)),
//             ],
//           ),
//
//           Divider(
//             color: Colors.white,
//             height: 20,
//             thickness: 2,
//
//           ),
//
//
//         ],),
//   );
// }
//
//
// //3
//   Widget granulatedWidget(BuildContext context) {
//     return   Padding(
//       padding: EdgeInsets.only(left: 40, top: 0,right: 50),
//       child: Column(
//         children: [
//
//           Row(
//             children: [
//               Text("Chocolate cake mix",style:TextStyle(fontSize: 14,color: Colors.grey, )),
//               Spacer(),
//               Text("x2",style:TextStyle(fontSize: 14,color: Colors.grey, )),
//               Spacer(),
//               Text("\$15.99",style:TextStyle(fontSize: 14,color: Colors.black87)),
//             ],
//           ),
//
//           Divider(
//             color: Colors.white,
//             height: 20,
//             thickness: 2,
//
//           ),
//
//
//         ],),
//     );
//   }
//
//
// //4
//   Widget dietdWidget(BuildContext context) {
//     return   Padding(
//       padding: EdgeInsets.only(left: 40, top: 0,right: 50),
//       child: Column(
//         children: [
//
//           Row(
//             children: [
//               Text("Diet cola",style:TextStyle(fontSize: 14,color: Colors.grey, )),
//               Spacer(),
//               Text("x8",style:TextStyle(fontSize: 14,color: Colors.grey, )),
//               Spacer(),
//               Text("\$10.75",style:TextStyle(fontSize: 14,color: Colors.black87)),
//             ],
//           ),
//
//           Divider(
//             color: Colors.white,
//             height: 20,
//             thickness: 2,
//
//           ),
//
//
//         ],),
//     );
//   }


}
