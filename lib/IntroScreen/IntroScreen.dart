

import 'package:ecommercesample/login.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {


  var pageValue=0;
  final controller=PageController(

    initialPage: 0,
  );

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          FlatButton(
            child: Text("Skip",style: TextStyle(color: Colors.redAccent)),
            onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> LoginPage()), (Route<dynamic> route) => false);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 600,
              child: PageView(
                controller: controller,
                onPageChanged: (value){
                  pageValue=value;
                  if(value==2){
                    showButton();
                  }
                },
                children: <Widget>[
                  getPage1(),
                  getPage2(),
                  getPage3()
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getPage1() {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/carousel/s1.jpg"),
          ),

        ],
      ),
    );
  }
  getPage2() {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/carousel/s3.jpg"),
          ),

        ],
      ),
    );
  }
  getPage3() {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/carousel/s3.jpg"),
          ),

        ],
      ),
    );
  }

   showButton() {
    return showModalBottomSheet(

        context: context, builder: (BuildContext bc){
      return Container(
        color: Colors.redAccent,
        child: FlatButton(
          child: Text("Get Started!",style: TextStyle(color: Colors.white),),
          onPressed: (){
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> LoginPage()), (Route<dynamic> route) => false);
          },
        ),
      );
    });
  }

}
