import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommercesample/address/AddressList.dart';
import 'ProductPage.dart';
import 'file:///D:/flutterProjects/ecommerce_sample/lib/Cart/CartPage.dart';
import 'package:ecommercesample/CategoriesList.dart';
import 'package:ecommercesample/MyOrders.dart';
import 'package:ecommercesample/Notifications.dart';
import 'package:ecommercesample/ProductList.dart';
//import 'package:ecommercesample/ProductPage.dart';
import 'package:ecommercesample/WishList.dart';
import 'package:ecommercesample/dumy.dart';
import 'package:ecommercesample/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String lang;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(),
      appBar: AppBar(
        title: Container(
          height: 50,
          width: 50,
          child: Image.asset("assets/logo.png"),
        ),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text("EN",style: TextStyle(color: Colors.white),),
            onPressed: () {
              LanguageDialog();
            },
          ),
          Icon(Icons.notifications_active)
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: 75,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(75),
                      bottomLeft: Radius.circular(75))),
            ),
            getColumn(),
          ],
        ),
      ),
    );
  }

  void LanguageDialog() async {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text("Select Your Language"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RadioListTile(
                    title: Text("English"),
                    selected: true,
                    value: "English",
                    groupValue: lang,
                    onChanged: (value) => lang = value,
                  ),
                  RadioListTile(
                    title: Text("Arabic"),
                    value: "Arabic",
                    groupValue: lang,
                    onChanged: (value) => lang = value,
                  )
                ],
              ),
            ));
  }

  Widget getColumn() {
    return Column(
      children: <Widget>[

        Padding(
          padding: EdgeInsets.only(
            top: 35,
            right: 50,
            left: 50,
          ),
          child: TextField(
            onSubmitted: (value){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>CategoriesPage()));
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              hintText: "Enter the item to be searched",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.red,
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: getCarousel()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  child: Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoriesPage()));
                  },
                )),
          ],
        ),
        getCategories(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Products",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  child: Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 15,
                    ),
                  ),
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductList()));
                  },
                )),
          ],
        ),
        getProducts(),
      ],
    );
  }

  Widget getCarousel() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Carousel(
        images: [
          ExactAssetImage("assets/carousel/1.jpg"),
          ExactAssetImage("assets/carousel/2.jpg"),
          ExactAssetImage("assets/carousel/3.jpg"),
        ],
      ),
    );
  }

  Widget getCategories() {
    return Row(
      children: <Widget>[
        SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.redAccent,
                            blurRadius: 7,
                            offset: Offset(5, 5))
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/cat/grains.jpg"),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.redAccent,
                            blurRadius: 7,
                            offset: Offset(5, 5))
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/cat/oils.jpg"),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.redAccent,
                            blurRadius: 7,
                            offset: Offset(5, 5))
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/cat/veg.jpg"),
                      )),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  getProducts() {
    return Row(
      children: <Widget>[
        SizedBox(
          height: 260,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage()));

                },
                child: Container(
                  height: 250,
                  width: 125,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(

                      children: <Widget>[

                        Image.asset(
                          "assets/orange.jpg",
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Oranges",
                                  style: TextStyle(color: Colors.redAccent),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Rs.250/Kg",
                                  style: TextStyle(color: Colors.black45),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "20 PTs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ))
                          ],
                        ),
                        FlatButton(
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            showTotal(context);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage()));

                },
                child: Container(
                  height: 250,
                  width: 125,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(

                      children: <Widget>[

                        Image.asset(
                          "assets/orange.jpg",
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Oranges",
                                  style: TextStyle(color: Colors.redAccent),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Rs.250/Kg",
                                  style: TextStyle(color: Colors.black45),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "20 PTs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ))
                          ],
                        ),
                        FlatButton(
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            showTotal(context);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage()));

                },
                child: Container(
                  height: 250,
                  width: 125,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(

                      children: <Widget>[

                        Image.asset(
                          "assets/orange.jpg",
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Oranges",
                                  style: TextStyle(color: Colors.redAccent),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Rs.250/Kg",
                                  style: TextStyle(color: Colors.black45),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "20 PTs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ))
                          ],
                        ),
                        FlatButton(
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            showTotal(context);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage()));

                },
                child: Container(
                  height: 250,
                  width: 125,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(

                      children: <Widget>[

                        Image.asset(
                          "assets/orange.jpg",
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Oranges",
                                  style: TextStyle(color: Colors.redAccent),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Rs.250/Kg",
                                  style: TextStyle(color: Colors.black45),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "20 PTs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ))
                          ],
                        ),
                        FlatButton(
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            showTotal(context);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage()));

                },
                child: Container(
                  height: 250,
                  width: 125,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(

                      children: <Widget>[

                        Image.asset(
                          "assets/orange.jpg",
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Oranges",
                                  style: TextStyle(color: Colors.redAccent),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Rs.250/Kg",
                                  style: TextStyle(color: Colors.black45),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "20 PTs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ))
                          ],
                        ),
                        FlatButton(
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            showTotal(context);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage()));

                },
                child: Container(
                  height: 250,
                  width: 125,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(

                      children: <Widget>[

                        Image.asset(
                          "assets/orange.jpg",
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Oranges",
                                  style: TextStyle(color: Colors.redAccent),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Rs.250/Kg",
                                  style: TextStyle(color: Colors.black45),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "20 PTs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ))
                          ],
                        ),
                        FlatButton(
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            showTotal(context);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage()));

                },
                child: Container(
                  height: 250,
                  width: 125,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(

                      children: <Widget>[

                        Image.asset(
                          "assets/orange.jpg",
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Oranges",
                                  style: TextStyle(color: Colors.redAccent),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Rs.250/Kg",
                                  style: TextStyle(color: Colors.black45),
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "20 PTs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ))
                          ],
                        ),
                        FlatButton(
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            showTotal(context);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        )
      ],
    );
  }

  void showTotal(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

        context: context,
        builder: (BuildContext bc) {
          return Container(
              height: 40,
              child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Total Rs.1100",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )));
        });
  }

  getDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: CircleAvatar(
              child: Image.asset("assets/user-picture.png",fit: BoxFit.scaleDown,),

            ),
          ),
          ListTile(
            leading: Icon(Icons.home,color: Colors.redAccent,),
            title: Text("Home"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },

          ),
          ListTile(
            leading: Icon(Icons.shopping_cart,color: Colors.redAccent,),
            title: Text("My Cart"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));
            },

          ),
          ListTile(
            leading: Icon(Icons.border_color,color: Colors.redAccent,),
            title: Text("My Orders"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.map,color: Colors.redAccent,),
            title: Text("My Addresses"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AddressListPage()));
            },

          ),
          ListTile(
            leading: Icon(Icons.favorite,color: Colors.redAccent,),
            title: Text("My Wishlist"),
             onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> WishList()));},

          ),
          ListTile(
            leading: Icon(Icons.notifications,color: Colors.redAccent,),
            title: Text("Notifications"),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationsPage()));},

          ),
          Padding(padding:EdgeInsets.all(10),child: Text("Products",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),)),
          ListTile(
            leading: Icon(Icons.category,color: Colors.redAccent,),
            title: Text("Categories"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoriesPage()));
            },

          ),
          ListTile(
            leading: Icon(Icons.apps,color: Colors.redAccent,),
            title: Text("View Products"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductList()));
            },

          ),
          ListTile(
            leading: Icon(Icons.remove_circle_outline,color: Colors.redAccent,),
            title: Text("Sign Out"),
            onTap: (){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                  LoginPage()), (Route<dynamic> route) => false);
            },

          ),
        ],
      ),
    );
  }

}


