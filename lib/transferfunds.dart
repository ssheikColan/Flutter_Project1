import 'package:deverllet/profile.dart';
import 'package:deverllet/receipt.dart';
import 'package:deverllet/shopping.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'helpcenter.dart';
import 'home.dart';

void main() {
  runApp(home());
}

class transferfunds extends StatelessWidget {
  const transferfunds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
              AppbarWidget(context),
              TransactionWidget(context),
              ProcessWidget(context),
              EmailWidget(context),
              walletidWidget(context),
              amountWidget(context),
              descriptionWidget(context),
              selectwalletWidget(context),
              greenichtWidget(context),
              teansferWidget(context),

        ]),
    ),
    ),
    ),
    );
  }
}

Widget AppbarWidget(BuildContext context){
  return AppBar(

      title: Text('Transfer Funds',style: TextStyle( fontSize: 25.0,)),
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

Widget TransactionWidget(BuildContext context){
  return  Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: Text(
      "Transactions may take up to 24 hours to",
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.black54,
      ),
    ),
  );
}

Widget ProcessWidget(BuildContext context){
  return Text(
      "process",
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.black54,
      ),
    );

}


Widget EmailWidget(BuildContext context){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.blueAccent),
      decoration: InputDecoration(
        labelText: 'RECEIVER’S EMAIL',
        // hintText: 'Enter your name',
          labelStyle: TextStyle(
              color: Colors.grey,
          ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
        ),

      ),
    ),
  );

}


Widget walletidWidget (BuildContext context){
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: .0, horizontal: 30.0),
    child: TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.blueAccent),
      decoration: InputDecoration(
        labelText: 'RECEIVER’S WALLET ID',
        // hintText: 'Enter your name',
        labelStyle: TextStyle(
          color: Colors.grey,fontSize: 15
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
        ),

      ),
    ),
  );
}


Widget amountWidget (BuildContext context){
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: .0, horizontal: 30.0),
    child: TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.blueAccent),
      decoration: InputDecoration(
        labelText: "AMOUNT (\$)",
        // hintText: 'Enter your name',
        labelStyle: TextStyle(
            color: Colors.grey,fontSize: 15
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
        ),

      ),
    ),
  );
}

Widget descriptionWidget(BuildContext context){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
    child: TextField(
      keyboardType: TextInputType.text,
      style: TextStyle(color: Colors.blueAccent),
      decoration: InputDecoration(
        labelText: 'DESCRIPTION',
        // hintText: 'Enter your name',
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
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
        child: Text("Select Wallet",style:TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold, ))),
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

Widget teansferWidget(BuildContext context){
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
              child: Text("TRANSFER FUNDS",
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
