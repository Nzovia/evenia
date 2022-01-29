import 'dart:ui';
import 'package:evenia/pages/order_detail.dart';
import 'package:evenia/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //All cards list
  // List<CardItem> items = [
  //   CardItem(
  //     urlImage: 'assets/pangung.jpeg',
  //     title: "Panggung Samenjak Internet",
  //     subtitle: '"January 19 2022"',
  //   ),
  //   CardItem(
  //     urlImage: 'assets/pangung.jpeg',
  //     title: "Panggung Samenjak Internet",
  //     subtitle: '"January 19 2022"',
  //   ),
  //   CardItem(
  //     urlImage: 'assets/pangung.jpeg',
  //     title: "Panggung Samenjak Internet",
  //     subtitle: '"January 19 2022"',
  //   ),
  //   CardItem(
  //     urlImage: 'assets/pangung.jpeg',
  //     title: "Panggung Samenjak Internet",
  //     subtitle: '"January 19 2022"',
  //   )
  // ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List ucomingEvents = [
      {
        "image": "assets/pangung.jpeg",
        "title": "Panggung Samenjak Internet",
        "time": "January 19 2022"
      },
      {
        "image": "assets/konser.jpeg",
        "title": "Konser Musik Hit",
        "time": "January 21 2022"
      },
      {
        "image": "assets/musik.jpg",
        "title": "Westhood hit songs",
        "time": "January 24 2022"
      },
      {
        "image": "assets/dresser.jpeg",
        "title": "Tamanduni Afikak",
        "time": "January 22 2022"
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: Container(
        // height: size.height,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(
                12,48,12,12),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                      //add padding
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Lets explore",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                "event & party",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                ),
                              ),
                            ]),
                        Align(
                          alignment: Alignment.centerRight,
                        child:  Container(
                          margin: const EdgeInsets.all(12),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: Colors.grey),
                          ),
                          child: const Icon(
                            Icons.notifications,
                            size: 32,
                            color: Colors.grey,
                          ),
                        ),
                        )
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Upcoming Event",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,

                    //Scrolling cards from left right direction
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: ucomingEvents.map((e) {
                        return buildCard(e['image'], e['title'], e['time']);
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),


                  //Scrolling options from left right
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ButtonWidget(text: "All", onClicked: () {}),
                          const SizedBox(
                            width: 8.0,
                          ),
                          ButtonWidget(text: "Music", onClicked: () {}),
                          const SizedBox(
                            width: 8.0,
                          ),
                          ButtonWidget(text: "Trading", onClicked: () {}),
                          const SizedBox(
                            width: 8.0,
                          ),
                          ButtonWidget(text: "Technology", onClicked: () {}),
                          const SizedBox(
                            width: 8.0,
                          ),
                          ButtonWidget(text: "Engineering", onClicked: () {}),
                          const SizedBox(
                            width: 8.0,
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 12,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Popular Event",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                  // bottom card for popular music
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/headphones.jpeg",
                            height: 80, width: 90),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Music Jamming Outdoor",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1D1B1D)),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Januari 23, 2022",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1D1B1D)),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Free",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1D1B1D)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  Widget buildCard(var image, var title, var time) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetails()),);
                },
              child: Image.asset(
                //items.urlImage,
                image,
                fit: BoxFit.cover,
                height: 280,
                width: 210,
              ),
            ),
          ),

          Container(
            height: 280,
            width: 210,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(time,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      );
}

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}
