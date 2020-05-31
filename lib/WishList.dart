

import 'file:///D:/flutterProjects/ecommerce_sample/lib/Cart/CartPage.dart';
import 'package:ecommercesample/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wishlist"),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.home,color: Colors.white,),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
          )
        ],
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              isThreeLine: true,
              leading: ClipOval(
                child: Image.asset("assets/orange.jpg"),

              ),
              title: Text("Oranges XX-Traders",style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Text("Rs.300/2KG",style: TextStyle(fontSize: 15),),
                  FlatButton(child: Text("Add to cart",style: TextStyle(fontSize: 20,color: Colors.redAccent)),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));},)
                ],
              ),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Icon(Icons.delete,color: Colors.redAccent,),
                  SizedBox(height: 7,),
                  Icon(Icons.favorite,color: Colors.redAccent,)
                ],

              ),
            ),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              isThreeLine: true,
              leading: ClipOval(
                child: Image.asset("assets/orange.jpg"),

              ),
              title: Text("Oranges XX-Traders",style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Text("Rs.300/2KG",style: TextStyle(fontSize: 15),),
                  FlatButton(child: Text("Add to cart",style: TextStyle(fontSize: 20,color: Colors.redAccent)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));},)
                ],
              ),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Icon(Icons.delete,color: Colors.redAccent,),
                  SizedBox(height: 7,),
                  Icon(Icons.favorite,color: Colors.redAccent,)
                ],

              ),
            ),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              isThreeLine: true,
              leading: ClipOval(
                child: Image.asset("assets/orange.jpg"),

              ),
              title: Text("Oranges XX-Traders",style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Text("Rs.300/2KG",style: TextStyle(fontSize: 15),),
                  FlatButton(child: Text("Add to cart",style: TextStyle(fontSize: 20,color: Colors.redAccent)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));},)
                ],
              ),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Icon(Icons.delete,color: Colors.redAccent,),
                  SizedBox(height: 7,),
                  Icon(Icons.favorite,color: Colors.redAccent,)
                ],

              ),
            ),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              isThreeLine: true,
              leading: ClipOval(
                child: Image.asset("assets/orange.jpg"),

              ),
              title: Text("Oranges XX-Traders",style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Text("Rs.300/2KG",style: TextStyle(fontSize: 15),),
                  FlatButton(child: Text("Add to cart",style: TextStyle(fontSize: 20,color: Colors.redAccent)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));},)
                ],
              ),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Icon(Icons.delete,color: Colors.redAccent,),
                  SizedBox(height: 7,),
                  Icon(Icons.favorite,color: Colors.redAccent,)
                ],

              ),
            ),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              isThreeLine: true,
              leading: ClipOval(
                child: Image.asset("assets/orange.jpg"),

              ),
              title: Text("Oranges XX-Traders",style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Text("Rs.300/2KG",style: TextStyle(fontSize: 15),),
                  FlatButton(child: Text("Add to cart",style: TextStyle(fontSize: 20,color: Colors.redAccent)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));},)
                ],
              ),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Icon(Icons.delete,color: Colors.redAccent,),
                  SizedBox(height: 7,),
                  Icon(Icons.favorite,color: Colors.redAccent,)
                ],

              ),
            ),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              isThreeLine: true,
              leading: ClipOval(
                child: Image.asset("assets/orange.jpg"),

              ),
              title: Text("Oranges XX-Traders",style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Text("Rs.300/2KG",style: TextStyle(fontSize: 15),),
                  FlatButton(child: Text("Add to cart",style: TextStyle(fontSize: 20,color: Colors.redAccent)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));},)
                ],
              ),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Icon(Icons.delete,color: Colors.redAccent,),
                  SizedBox(height: 7,),
                  Icon(Icons.favorite,color: Colors.redAccent,)
                ],

              ),
            ),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              isThreeLine: true,
              leading: ClipOval(
                child: Image.asset("assets/orange.jpg"),

              ),
              title: Text("Oranges XX-Traders",style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Text("Rs.300/2KG",style: TextStyle(fontSize: 15),),
                  FlatButton(child: Text("Add to cart",style: TextStyle(fontSize: 20,color: Colors.redAccent)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));},)
                ],
              ),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Icon(Icons.delete,color: Colors.redAccent,),
                  SizedBox(height: 7,),
                  Icon(Icons.favorite,color: Colors.redAccent,)
                ],

              ),
            ),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              isThreeLine: true,
              leading: ClipOval(
                child: Image.asset("assets/orange.jpg"),

              ),
              title: Text("Oranges XX-Traders",style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Text("Rs.300/2KG",style: TextStyle(fontSize: 15),),
                  FlatButton(child: Text("Add to cart",style: TextStyle(fontSize: 20,color: Colors.redAccent)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));},)
                ],
              ),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Icon(Icons.delete,color: Colors.redAccent,),
                  SizedBox(height: 7,),
                  Icon(Icons.favorite,color: Colors.redAccent,)
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}

