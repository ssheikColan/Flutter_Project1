import 'package:deverllet/transferfunds.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(profile());
}
class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(children: <Widget>[
              AppbarWidget(context),
              containerWidget(context),
              columnWidget(context),

            ]),
          ),
        ),
      ),
    );
  }


  Widget columnWidget(BuildContext context) {
    return Column(children:  [
      profileWidget(context),
      TomWidget(context),
      tomclancyWidget(context),
      grideWidget(context),

    ],);
  }

  Widget AppbarWidget(BuildContext context) {
    return AppBar(
      flexibleSpace: Row(
        children: [
          IconButton(

            onPressed: () =>
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => transferfunds()
                  ),),

            // onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.chevron_left_rounded, color: Colors.white, size: 50,),
          ),
          Container(margin: const EdgeInsets.only(top: 16.0, left: 8.0),
              child: const Text('Profile',
                  style: TextStyle(fontSize: 25.0, color: Colors.white)))
        ],
      ),
      automaticallyImplyLeading: true,
      titleSpacing: 0,
      toolbarHeight: 130,
      backgroundColor: const Color(0xff31BBC5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(0),
        ),
      ),
    );
  }


  Widget profileWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 58.0),
      child: Align(
          alignment: Alignment.center,
          child: CircleAvatar(
            // backgroundColor: Colors.black,
            radius: 60,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
          )
      ),
    );
  }


  Widget containerWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Container(
        height: 300,
        width: double.infinity,
        //
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
            topLeft: Radius.circular(50.0),
          ),
        ),
      ),
    );
  }


  Widget TomWidget(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "Tom Clancy",
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }

  Widget tomclancyWidget(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "tomclancy27@gmail.com",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }


  Widget grideWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            childAspectRatio: 1.1
        ),
        shrinkWrap: true,
        children: [


          //1
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Image.asset(
                'assets/rectangle.png',
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img2.png',
                    ),
                    SizedBox(height: 8,),
                    Text("STATISTICS",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      textAlign: TextAlign.center,),
                  ],),
              ),
            )
          ],),


          //2
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                'assets/rectangle.png',
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 20),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img2.png',
                    ),
                    SizedBox(height: 8,),
                    Text("REQUEST \nSTATEMENT",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      textAlign: TextAlign.center,),
                  ],),
              ),
            )
          ],),


          //3
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Image.asset(
                'assets/rectangle.png',
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img2.png',
                    ),
                    SizedBox(height: 8,),
                    Text("IDENTIFICATION",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      textAlign: TextAlign.center,),
                  ],),
              ),
            )
          ],),


          //4
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                'assets/rectangle.png',
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 20),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img2.png',
                    ),
                    SizedBox(height: 8,),
                    Text("INVITE AND\nEARN",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      textAlign: TextAlign.center,),
                  ],),
              ),
            )
          ],),

        ],
      ),
    );
  }
}