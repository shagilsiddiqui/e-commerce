
import '../HomePage.dart';
import 'file:///D:/flutterProjects/ecommerce_sample/lib/address/AddressPage.dart';
import 'package:flutter/material.dart';

import '../NavigationBar.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
        backgroundColor: Colors.redAccent,
        title: Text("My Cart"),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(child: Icon(Icons.home),
           onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
    },)
        ],
      ),
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          getCartItems(),
          getTotal(),
          getAddressButton(),
        ],
      ),
    );
  }

  getCartItems() {
    return  Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        height: 400,
        child: ListView(

          scrollDirection: Axis.vertical,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              elevation: 20,
              child: ListTile(

                leading: Container(
                  height: 70,
                  width: 50,
                  child: Image.asset("assets/carousel/1.jpg",scale: .5,),

                ),
                title: Text("Vegetables"),
                subtitle: Text("Rs. 50/Kg"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.remove_circle,color: Colors.black,),
                    Text(" QTY "),
                    Icon(Icons.add_circle,color: Colors.black,)
                  ],
                ),

              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              elevation: 20,
              child: ListTile(

                leading: Container(
                  height: 70,
                  width: 50,
                  child: Image.asset("assets/carousel/2.jpg",scale: .5,),

                ),
                title: Text("Vegetables"),
                subtitle: Text("Rs. 50/Kg"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.remove_circle,color: Colors.black,),
                    Text(" QTY "),
                    Icon(Icons.add_circle,color: Colors.black,)
                  ],
                ),

              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              elevation: 20,
              child: ListTile(

                leading: Container(
                  height: 70,
                  width: 50,
                  child: Image.asset("assets/carousel/3.jpg",scale: .5,),

                ),
                title: Text("Vegetables"),
                subtitle: Text("Rs. 50/Kg"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.remove_circle,color: Colors.black,),
                    Text(" QTY "),
                    Icon(Icons.add_circle,color: Colors.black,)
                  ],
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }

  getTotal() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 30, 20),
      child: Table(
        columnWidths: {1:FractionColumnWidth(.3)},

        children: [
          TableRow(
            children: [
              Text("Sub-total(3-items)",textAlign: TextAlign.end,),
              Text("Rs. 900",textAlign: TextAlign.end)
            ]
          ),
          TableRow(
              children: [
                Text("Tax",textAlign: TextAlign.end),
                Text("Rs. 200",textAlign: TextAlign.end)
              ]
          ),
          TableRow(
              children: [
                Text("Cart Total",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.end),
                Text("Rs. 1100",textAlign: TextAlign.end,style: TextStyle(fontWeight: FontWeight.bold),)
              ]
          ),
        ],
      ),
    );
  }

  getAddressButton() {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: RaisedButton(
        child: Text("Secure Checkout",style: TextStyle(color: Colors.white,fontSize: 25),),
        color: Colors.redAccent,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> AddressPage()));
        },
      ),
    );
  }
}
