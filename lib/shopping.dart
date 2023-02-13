import 'package:deverllet/transferfunds.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(shopping());
}
class shopping extends StatelessWidget {
  const shopping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
              AppbarWidget(context),
              qrcodeWidget(context),
              putqrcodeWidget(context),
              qrcodeimgWidget(context),
              selectwalletWidget(context),
              greenichtWidget(context),
              paymentWidget(context),



            ]),
          ),
        ),
      ),
    );
  }
}

Widget AppbarWidget(BuildContext context){
  return AppBar(
    title: Text('Shopping',style: TextStyle( fontSize: 25.0,)),
    toolbarHeight: 90,
    leading: IconButton(

      onPressed: () =>   Navigator.push(context, MaterialPageRoute(builder: (context) => transferfunds()
      ),),

      // onPressed: () => Navigator.of(context).pop(),
      icon: Icon(Icons.chevron_left_rounded,color: Colors.white,size: 50,),
    ),
    backgroundColor: Color(0xff31BBC5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(60),
      ),
    ),
  );
}


Widget qrcodeWidget(BuildContext context){
  return Padding(
    padding: EdgeInsets.only(left: 10,top: 20),
    child:  Align(
        alignment: Alignment.topLeft,
        child: Text("QR Code",style:TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold, ))),
  );
}


Widget putqrcodeWidget(BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(top: 10.0,right:0),

    child: Text(
        "Put QR code in the middle of the screen to scan",
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black54,
        ),
      ),
  );
}


Widget qrcodeimgWidget(BuildContext context){
  return   Padding(
    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0),
    child: Container(
    height: 230,
    child: Card(
      child:Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Image.asset(
            'assets/qrcode.png',
            height: 150,
            width: 150,
          ),
        ),


        Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 15),
          child: Container(
            width: double.infinity,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                  "Scanned",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
                Image.asset(
                  'assets/select.png',
                  height: 40,
                  width: 40,
                ),
              ],),
            ),
          ),
        )

      ],),

      elevation: 8,
      shadowColor: Colors.grey,
      shape:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white)
      ),

    ),
    ),
  );
}



Widget selectwalletWidget(BuildContext context){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
    child:  Align(
        alignment: Alignment.topLeft,
        child: Text("Select Wallet",style:TextStyle(fontSize: 25,color: Colors.black, ))),
  );
}


Widget greenichtWidget(BuildContext context){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),

    child:  Container(
      height: 70,
      child: Card(
        child:  Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Image.asset(
                'assets/img.png',
                height: 25,
                width: 25,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Greenich wallet",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              // IconButton(onPressed:() {}, icon: Icons(Icons.arrow_right_alt))

              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,bottom: 5),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    child: IconButton(
                      icon: const Icon(Icons.chevron_right_rounded,color: Colors.blueAccent,size: 40,),
                      onPressed: () {},
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        elevation: 8,
        shadowColor: Colors.grey,
        shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white)
        ),
      ),
    ),

  );
}

Widget paymentWidget(BuildContext context){
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
              child: Text("MAKE PAYMENT",
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