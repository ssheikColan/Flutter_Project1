import 'package:deverllet/receipt.dart';
import 'package:deverllet/transferfunds.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(helpcenter());
}

class helpcenter extends StatelessWidget {
  const helpcenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
              AppbarWidget(context),
              whatcanWidget(context),
              searchWidget(context),
              listWidget(context),
              walkthroughsWidget(context),

              transferWidget(context,Icons.account_box, "Transferring funds", Icons.chevron_right_outlined),
              transferWidget(context,Icons.account_box, "App tutorial", Icons.chevron_right_outlined),
              transferWidget(context,Icons.account_box, "Creating a wallet", Icons.chevron_right_outlined),
              contactWidget(context),
              sendmailWidget(context),


            ]),
          ),
        ),
      ),
    );
  }
}


Widget AppbarWidget(BuildContext context){
  return AppBar(
    title: const Text('Shopping',style: TextStyle( fontSize: 25.0,)),
    toolbarHeight: 90,
    leading: IconButton(

      onPressed: () =>   Navigator.push(context, MaterialPageRoute(builder: (context) => transferfunds()
      ),),

      // onPressed: () => Navigator.of(context).pop(),
      icon: Icon(Icons.chevron_left_rounded,color: Colors.white,size: 50,),
    ),
    backgroundColor: Color(0xff31BBC5),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(60),
      ),
    ),
  );
}


Widget whatcanWidget(BuildContext context){
  return const Padding(
    padding: EdgeInsets.only(left: 15,top: 20),
    child:  Align(
        alignment: Alignment.topLeft,
        child:Text("What can we help\nyou with?", style: TextStyle(color: Colors.black,fontSize: 24, fontWeight: FontWeight.bold, ),)),
  );
}

Widget searchWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
    child: Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
/* Clear the search field */
                },
              ),
              hintText: 'Search...',
              border: InputBorder.none),
        ),
      ),
    ),
  );

}


//list
Widget listWidget(BuildContext context) {
  return Container(
      height: 190,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            Row(
              children: [
                billingWidget(context),
                accountWidget(context),
                SavingsWidget(context),



              ],
            ),

        ],
      ),
    );


}

//1
Widget billingWidget(BuildContext context) {
  return      Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: Container(
      height: 140,
      width: 150,

      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.wallet_membership_outlined ,color: Colors.white,size: 40,),
            SizedBox(height: 10,),
            Text(
              'Billing and\npayment',
              style: TextStyle(color: Colors.white,fontSize: 19,),
            ),
          ],),
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF316396),
      ),
    ),
  );

}

//2
Widget accountWidget(BuildContext context) {
  return   Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: Container(
      height: 140,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.account_box ,color: Colors.white,size: 40,),
            SizedBox(height: 10,),
            Text(
              'Account',
              style: TextStyle(color: Colors.white,fontSize: 19,),
            ),
          ],),
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF316396),
      ),
    ),
  );

}


//3
Widget SavingsWidget(BuildContext context) {
  return   Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: Container(
      height: 140,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.account_box ,color: Colors.white,size: 40,),
            SizedBox(height: 10,),
            Text(
              'Savings',
              style: TextStyle(color: Colors.white,fontSize: 19,),
            ),
          ],),
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF316396),
      ),
    ),
  );

}

Widget walkthroughsWidget(BuildContext context){
  return const Padding(
    padding: EdgeInsets.only(left: 15),
    child:  Align(
        alignment: Alignment.topLeft,
        child:Text("Walkthroughs", style: TextStyle(color: Colors.black,fontSize: 24, fontWeight: FontWeight.bold, ),)),
  );
}



Widget transferWidget(BuildContext context, IconData? iconleft, String title, IconData? iconright,) {
  return   Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),
    child: Container(
      child: Row(

        children: [
         Container(
            child: IconButton(
              icon: Icon(iconleft,color: Colors.blueAccent,size: 38,),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 10,),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22.0,
              color: Colors.black,
            ),
          ),
          // IconButton(onPressed:() {}, icon: Icons(Icons.arrow_right_alt))

          Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
              child: IconButton(
                icon: Icon(iconright,color: Colors.blueAccent,size: 38,),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    ),
  );
}



Widget contactWidget(BuildContext context){
  return const Padding(
    padding: EdgeInsets.only(left: 15,top: 15),
    child:  Align(
        alignment: Alignment.topLeft,
        child:Text("Contact us", style: TextStyle(color: Colors.black,fontSize: 24, fontWeight: FontWeight.bold, ),)),
  );
}


Widget sendmailWidget(BuildContext context) {
  return   Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
    child: Container(
      child: Row(

        children: [
          Container(
            child: IconButton(
              icon: const Icon(Icons.account_box,color: Colors.blueAccent,size: 38,),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 10,),
          const Text(
            "Creating a wallet",
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.black,
            ),
          ),
          // IconButton(onPressed:() {}, icon: Icons(Icons.arrow_right_alt))

          Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
              child: IconButton(
                icon: const Icon(Icons.chevron_right_outlined,color: Colors.blueAccent,size: 38,),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    ),
  );
}