
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommercesample/Cart/CartPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> with TickerProviderStateMixin{
  TabController _tabController;
@override
  void initState() {
  _tabController = new TabController(vsync: this, length:
  2);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
        centerTitle: true,

      ),
      body: getBody(),
    );
  }

  getBody() {
    return Column(
      children: <Widget>[
      SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Carousel(
          images: [
            ExactAssetImage("assets/orange.jpg"),
            ExactAssetImage("assets/carousel/1.jpg"),
            ExactAssetImage("assets/carousel/2.jpg"),
            ExactAssetImage("assets/carousel/3.jpg"),
          ],
        ),
      ),
        SizedBox(
          height: 75,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.redAccent,
                height: 75,
                child: TabBar(
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      child: Text("Product Details"),
                    ),
                    Tab(
                      child: Text("Ratings and Reviews"),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        SizedBox(
          height: 400,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
             getProductDetails(),
              getReviews(),
            ],
          ),
        ),
       SizedBox(height: 20,),
       getButtons(),
      ],
    );

  }

  getProductDetails() {
  return Column(
    children: <Widget>[
      SizedBox(height: 10,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[

        Text("Orange",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 25),),
        Text("Rs.150/KG",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
      ],
    ),
      Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10,left: 40),
              child: Text("Best Seller, TamilNadu",style: TextStyle(color: Colors.green),))
        ],
      ),
      Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10,left: 40),
              child: Text("Product Details",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),))
        ],

      ),
      Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10,left: 40,right: 40),
              child: Container(
                height: 250,
                width: 300,
                child: Wrap(
                  children: <Widget>[
                    Text("It is a long establish fact that when a reader is distracted by the readable content of a page when looking at its layout. It is a long establish fact that when a reader is distracted by the readable content of a page when looking at its layout. It is a long establish fact that when a reader is distracted by the readable content of a page when looking at its layout. It is a long establish fact that when a reader is distracted by the readable content of a page when looking at its layout.",
                      style: TextStyle(color: Colors.redAccent,fontSize: 15),),
                  ],
                ),
              ))
        ],
      )
    ],
  );
  }

  getReviews() {
  return SizedBox(
    height: 500,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Card(
            color: Colors.green[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            elevation: 5,
            child: ListTile(
              isThreeLine: true,
              leading: Icon(Icons.person,size: 50,),
              title: Text("Mr. Arunram"),
              subtitle: Text("Very good and fresh fruits. Timely delivery. Recommended"),
              trailing: Text("5.0 Stars",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          Card(
            color: Colors.green[50],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            elevation: 5,
            child: ListTile(
              isThreeLine: true,
              leading: Icon(Icons.person,size: 50,),
              title: Text("Mr. Arunram"),
              subtitle: Text("Very good and fresh fruits. Timely delivery. Recommended"),
              trailing: Text("5.0 Stars",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          Card(
            color: Colors.green[50],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            elevation: 5,
            child: ListTile(
              isThreeLine: true,
              leading: Icon(Icons.person,size: 50,),
              title: Text("Mr. Arunram"),
              subtitle: Text("Very good and fresh fruits. Timely delivery. Recommended"),
              trailing: Text("5.0 Stars",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          Card(
            color: Colors.green[50],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            elevation: 5,
            child: ListTile(
              isThreeLine: true,
              leading: Icon(Icons.person,size: 50,),
              title: Text("Mr. Arunram"),
              subtitle: Text("Very good and fresh fruits. Timely delivery. Recommended"),
              trailing: Text("5.0 Stars",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          Card(
            color: Colors.green[50],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            elevation: 5,
            child: ListTile(
              isThreeLine: true,
              leading: Icon(Icons.person,size: 50,),
              title: Text("Mr. Arunram"),
              subtitle: Text("Very good and fresh fruits. Timely delivery. Recommended"),
              trailing: Text("5.0 Stars",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    ),
  );
  }

  getButtons() {
  return Container(

    height: 75,
    width: MediaQuery.of(context).size.width,
    child: Card(
      color: Colors.redAccent,
      elevation: 5,
      child: Row(
        children: <Widget>[
        Expanded(
          flex: 50,
          child: FlatButton(
            color: Colors.redAccent,
            child: Text("Add to cart",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),),
            onPressed: (){
              getBottomSheet();
            },
          ),
        ),
          Expanded(
            flex: 50,
            child: FlatButton(
              color: Colors.redAccent,
              child: Text("Buy Now",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));
              },

            ),
          ),



        ],
      ),
    ),
  );
  }

   getBottomSheet() {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(55),topLeft: Radius.circular(55))
      ),
      context: context, builder: (BuildContext bc){
    return Container(


      height: MediaQuery.of(context).size.height/2,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
        ),
        elevation: 20,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               getPicture(),
               getName(),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(15),child: Text("Product Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.redAccent),))
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: SizedBox(
                    height: 200,
                    width: 350,
                    child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
                    textAlign: TextAlign.justify,style: TextStyle(color: Colors.redAccent),),
                  ),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.remove_circle_outline,color: Colors.redAccent,size: 30,),
                Text("1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.redAccent),),
                Icon(Icons.add_circle_outline,color: Colors.redAccent,size: 30,),
              ],
            )
          ],
        ),
      ),
    );
  });
   }

  getPicture() {
  return  Container(
    padding: EdgeInsets.only(left: 50,top: 50),
    height: 150,
    width: 150,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/orange.jpg",)
        )
    ),
  );
  }

  getName() {
  return  Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text("Orange",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20,color: Colors.redAccent),),
      Text("Best Seller,Tamil Nadu  ",style: TextStyle(fontSize: 15,color: Colors.green),),
      Text("Rs. 150/KG",style: TextStyle(fontSize: 15))
    ],
  );
  }
}
