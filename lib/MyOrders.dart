import 'package:ecommercesample/HomePage.dart';
import 'package:ecommercesample/NavigationBar.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(

        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Navigation()),
              );
            },
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "All",
              ),
              Tab(
                text: "Unpaid",
              ),
              Tab(
                text: "Shipped",
              ),
              Tab(
                text: "To be \nshipped",
              ),
              Tab(
                text: "In \ndispute",
              ),
            ],
          ),
          title: Text("My Orders"),
          centerTitle: true,
        ),
        body: TabBarView(
          children: <Widget>[
            getListView(),
            getListView(),
            getListView(),
            getListView(),
            getListView(),
          ],
        ),
      ),
    );
  }

  getListView() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,
            child: ListTile(
              isThreeLine: true,
              leading: Container(
                height: 70,
                width: 50,
                child: Image.asset(
                  "assets/carousel/1.jpg",
                  scale: .5,
                ),
              ),
              title: Text("Vegetables"),
              subtitle: Text("Rs. 50/Kg \n 2019/11/25, GA25250311"),

            ),
          ),
          Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,
            child: ListTile(
              isThreeLine: true,
              leading: Container(
                height: 70,
                width: 50,
                child: Image.asset(
                  "assets/carousel/2.jpg",
                  scale: .5,
                ),
              ),
              title: Text("Vegetables"),
              subtitle: Text("Rs. 50/Kg \n 2019/11/25, GA25250311"),

            ),
          ),
          Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,
            child: ListTile(
              isThreeLine: true,
              leading: Container(
                height: 70,
                width: 50,
                child: Image.asset(
                  "assets/carousel/3.jpg",
                  scale: .5,
                ),
              ),
              title: Text("Vegetables"),
              subtitle: Text("Rs. 50/Kg \n 2019/11/25, GA25250311"),

            ),
          ),
        ],
      ),
    );
  }
}
