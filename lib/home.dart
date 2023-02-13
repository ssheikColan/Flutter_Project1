import 'package:deverllet/transferfunds.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatefulWidget {
 const home({Key? key}) : super(key: key);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar:    navigationWidget(context),
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
              AppbarWidget(context),
              listWidget(context),
              quickactionWidget(context),
              quickactionlistWidget(context),
              activitycontainerWidget(context),



            ]),
          ),
        ),
      ),
    );
  }

  Widget AppbarWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.blueAccent,
                  size: 38,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Spacer(),
          Text(
            'Hello, Tom,',
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  // backgroundColor: Colors.black,
                  radius: 25,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                )),
          ),
        ],
      ),
    );
  }

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
              billing2Widget(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget billingWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Image.asset(
        'assets/group1.png',
      ),
    );
  }

  Widget billing2Widget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Image.asset(
        'assets/group1.png',
      ),
    );
  }

  Widget quickactionWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 15),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            "Quick Actions",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }

//2nd list
  Widget quickactionlistWidget(BuildContext context) {
    return Container(
      height: 170,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: [
              transferWidget(context),
              SavingsWidget(context),
              electricityWidget(context),
            ],
          ),
        ],
      ),
    );
  }

//1
  Widget transferWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 140,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.wallet_membership_outlined,
                      color: Colors.lightBlue,
                      size: 40,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Transfer funds',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }

//2
  Widget SavingsWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 140,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.wallet_membership_outlined,
                      color: Colors.lightBlue,
                      size: 40,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Top up savings',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }

//3

  Widget electricityWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 140,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.wallet_membership_outlined,
                      color: Colors.lightBlue,
                      size: 40,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Electricity bill',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget activitycontainerWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              activityWidget(context),
              stepeerWidget(context),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget activityWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13.0),
      child: Text(
        "Activity",
        style: TextStyle(
          color: Colors.black87,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget stepeerWidget(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      child: Stepper(

        controlsBuilder: (BuildContext context, ControlsDetails? controlsDetails) {
          return Row(
            children: <Widget>[
              TextButton(
                onPressed: controlsDetails!.onStepContinue,
                child: const Text(''),
              ),
              TextButton(
                onPressed: controlsDetails.onStepCancel,
                child: const Text(''),
              ),
            ],
          );
        },

        steps: [
          Step(
            title: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bank deposit",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Cash",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$100.00",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "4:26 PM",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            content: Container(),
          ),

          Step(
            title: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apple Music",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Entertainment",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$1.90",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "6:14 PM",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            content: Container(),
          ),
        ],
        type: StepperType.vertical,
      ),
    );
  }

  Widget navigationWidget(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      backgroundColor: Colors.grey,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: TextStyle(color: Colors.red),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Payments',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Savings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Wallets',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.red,
      onTap: _onItemTapped,
    );
  }
}
