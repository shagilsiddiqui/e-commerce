

import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Products"),
        centerTitle: true,

      ),
      body: getBody(),
    );
  }

  getBody() {
    return GridView.count(crossAxisCount: 2,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(

            height: 400,
            width: 125,
            child: Card(
              color: Colors.amber[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 10,
              child: Column(

                children: <Widget>[
                  Expanded(
                    child: ClipOval(child: Image.asset("assets/orange.jpg",),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Fruits",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                          ))
                    ],
                  ),



                ],
              ),
            ),
          ),

        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(

            height: 400,
            width: 125,
            child: Card(
              color: Colors.amber[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 10,
              child: Column(

                children: <Widget>[
                  Expanded(
                    child: ClipOval(child: Image.asset("assets/cat/veg.jpg",),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Vegetables",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                          ))
                    ],
                  ),



                ],
              ),
            ),
          ),

        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(

            height: 400,
            width: 125,
            child: Card(
              color: Colors.amber[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 10,
              child: Column(

                children: <Widget>[
                  Expanded(
                    child: ClipOval(child: Image.asset("assets/cat/herb.jpg",),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Herbs",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                          ))
                    ],
                  ),



                ],
              ),
            ),
          ),

        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(

            height: 400,
            width: 125,
            child: Card(
              color: Colors.amber[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 10,
              child: Column(

                children: <Widget>[
                  Expanded(
                    child: ClipOval(child: Image.asset("assets/cat/oils.jpg",),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Oils",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                          ))
                    ],
                  ),



                ],
              ),
            ),
          ),

        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(

            height: 400,
            width: 125,
            child: Card(
              color: Colors.amber[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 10,
              child: Column(

                children: <Widget>[
                  Expanded(
                    child: ClipOval(child: Image.asset("assets/cat/beans.jpg",),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Tea and \nCoffee",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                          ))
                    ],
                  ),



                ],
              ),
            ),
          ),

        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(

            height: 400,
            width: 125,
            child: Card(
              color: Colors.amber[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 10,
              child: Column(

                children: <Widget>[
                  Expanded(
                    child: ClipOval(child: Image.asset("assets/cat/spices.jpg",),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Spices",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                          ))
                    ],
                  ),



                ],
              ),
            ),
          ),

        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(

            height: 400,
            width: 125,
            child: Card(
              color: Colors.amber[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 10,
              child: Column(

                children: <Widget>[
                  Expanded(
                    child: ClipOval(child: Image.asset("assets/cat/processed.jpg",),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Processed\nFoods",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                          ))
                    ],
                  ),



                ],
              ),
            ),
          ),

        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(

            height: 400,
            width: 125,
            child: Card(
              color: Colors.amber[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 10,
              child: Column(

                children: <Widget>[
                  Expanded(
                    child: ClipOval(child: Image.asset("assets/cat/grains.jpg",),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Grains",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                          ))
                    ],
                  ),



                ],
              ),
            ),
          ),

        ),

    ],);
  }
}
