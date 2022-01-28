import 'package:evenia/pages/dashboard.dart';
import 'package:evenia/pages/home.dart';
import 'package:evenia/pages/messages_page.dart';
import 'package:evenia/pages/profile_page.dart';
import 'package:flutter/material.dart';

import 'pages/order_detail.dart';

class PageManager extends StatefulWidget {
  const PageManager({Key? key}) : super(key: key);

  @override
  _PageManagerState createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Home(),
    const Dashboard(),
    const Messages(),
    const Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.stop_circle_rounded),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetails()),);
        },
      ),
      //aligning the action button to the centre of the screen
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //adding bottom nav
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //items to the left of floatingAction Button
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const Home();
                      currentTab = 0;
                    });

                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: currentTab == 0 ? Colors.green : Colors.grey,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                            color:
                            currentTab == 0 ? Colors.green : Colors.grey),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const Dashboard();
                      currentTab = 1;
                    });

                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard_sharp,
                        color: currentTab == 1 ? Colors.green : Colors.grey,
                      ),
                      Text(
                        'Dashboard',
                        style: TextStyle(
                            color:
                            currentTab == 1 ? Colors.green : Colors.grey),
                      )
                    ],
                  ),
                ),
              ]),

              //items to the right of floating action button
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const Messages();
                      currentTab = 2;
                    });

                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mail,
                        color: currentTab == 2 ? Colors.green : Colors.grey,
                      ),
                      Text(
                        'Messages',
                        style: TextStyle(
                            color:
                            currentTab == 2 ? Colors.green : Colors.grey),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const Profile();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: currentTab == 3 ? Colors.green : Colors.grey,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color:
                            currentTab == 3 ? Colors.green : Colors.grey),
                      )
                    ],
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
