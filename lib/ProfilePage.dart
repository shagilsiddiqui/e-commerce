

import 'package:ecommercesample/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'NavigationBar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
const tableStyle=  TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold
);
const tableStyle2=  TextStyle(
    fontSize: 20,

);
class _ProfilePageState extends State<ProfilePage> {
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
        title: Text("Profile"),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.edit)
        ],
      ),
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: <Widget>[
          Stack(
            children: <Widget>[
              getProfileCard(),

            ],
          ),
          getTable(),
          getLogoutButton(),
        ],
      ),
    );
  }

  getProfileCard() {
    return Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Container(
            height: 250,
            width: 300,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 20,
              color: Colors.amber[500],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/logo.png"), radius: 40,
                  ),
                  Text("Username",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text("inquiry@cwservices.co.in",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  getTable() {
    return Padding(
      padding: EdgeInsets.only(top: 50),
      child: Table(
        
        columnWidths: {0: FractionColumnWidth(.2),},
        children: [
          TableRow(
              children: [
                Icon(Icons.phone,color: Colors.black,),
                Text("Mobile Number",style: tableStyle,),
                Text("7080855524",style: tableStyle2,)
              ]
          ),
          TableRow(
              children: [
                Icon(Icons.code,color: Colors.black,),
                Text("Referral Code",style: tableStyle,),
                Text("123456",style: tableStyle2,)
              ]
          ),
          TableRow(
              children: [
                Icon(Icons.add_circle,color: Colors.black,),
                Text("BonBiz Coins",style: tableStyle,),
                Text("200",style: tableStyle2,)
              ]
          ),
          TableRow(
              children: [
                Icon(Icons.location_on,color: Colors.black,),
                Text("Address",style: tableStyle,),
                Text("abcdefghijklmnopqrstuvwxyz")
              ]
          ),
        ],

      ),
    );
  }

  getLogoutButton() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: RaisedButton(
        color: Colors.redAccent,
        child: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 25),),
      onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
      },
      ),
    );
  }
}
