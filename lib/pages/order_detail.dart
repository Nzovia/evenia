import 'package:evenia/widgets/button_widget.dart';
import 'package:evenia/widgets/counterbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    //declaring list of ticket types
    final Size size = MediaQuery.of(context).size;
    List tickettype = [
      {"title": "Early Bid", "cost": "\$12"},
      {"title": "VIP Bid", "cost": "\$30"},
      {"title": "Pro + ", "cost": "\$50"},
      {"title": "VVIP ", "cost": "\$80"},
    ];

    //list of buttons on select date
    List selectdates = [
      {
        "textdates": "10 Dec",
      },
      {
        "textdates": "12 Dec",
      },
      {
        "textdates": "13 Dec",
      },
      {
        "textdates": "14 Dec",
      },
      {
        "textdates": "16 Dec",
      },
      {
        "textdates": "17 Dec",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            //navigate back to home
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Order Detail',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),

      //all app widgets goes here
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRect(
                // borderRadius: BorderRadius.circular(10),
                child: Image.asset(
              "assets/pangung.jpeg",
              height: 180,
              width: 350,
              fit: BoxFit.cover,
            )),
            const SizedBox(
              height: 8,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Panggung Semenjak",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Internet",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            const SizedBox(
              height: 8,
            ),
            Row(
              //add padding
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: Colors.grey),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Wildan Wari",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                FlatButton(
                  onPressed: () {},
                  color: Colors.white10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: const BorderSide(color: Colors.blueGrey)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: const Text(
                    "Follow",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Select Ticket Type",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),

            //Cards scrollview
            SizedBox(
              height: 130,
              width: MediaQuery.of(context).size.width,

              //list of cards in select type
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: tickettype.map((e) {
                  return buildCard(
                    e['title'],
                    e['cost'],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),

            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Select Date",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            //select dates button
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,

              //Scrolling cards from left right direction
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: selectdates.map((e) {
                  return buildButton(
                    e['textdates'],
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 4.0,),

            //Checkout button
            Container(
              height: 51,
               width: 350,
               child: ButtonWidget(text: "CheckOut", onClicked: (){})
            ),

          ],
        ),
      )),
    );
  }

  Widget buildCard(var title, var cost) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: 120,
          height: 130,
          child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(color: Colors.blueGrey)),
              child:Padding(padding: const EdgeInsets.fromLTRB(4.0,8.0,4.0,8),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        cost,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                      const Counters(),
                      //const SizedBox(height: 10,),
                     // ButtonWidget(text: "Check Out", onClicked: (){}),
                    ],
                  )),

              )

        ),
      );

  Widget buildButton(var textdates) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: 80,
          height: 30,
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(color: Colors.blueGrey)),
            onPressed: () {
              //set state to change the color of the of the button ontap
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                textdates,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
          ),
        ),
      );
}
