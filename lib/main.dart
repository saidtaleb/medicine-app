import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// var mainColor = Color(0xFF69DFFD);
var mainColor = Color(0xFF95E4F6);
var secondColor = Color(0xFFc2f5ff);
var redAccent = Color(0xFFfe7e8e);
var textColor = Color(0xFF858585);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicine app',
      theme: ThemeData(fontFamily: 'GoogleSans'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          _buildBackHeader(context),
          _buildHeader(context),
          _buildBody(context)
        ],
      ),
    );
  }

  Widget _buildBackHeader(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45))),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 45.0, left: 25.0, right: 20.0),
        child: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: secondColor,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              Center(
                child: Image.asset(
                  'assets/images/bottle.png',
                  height: 250,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.5 - 20,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0, 10),
                        blurRadius: 10)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Icon(
                  Icons.favorite,
                  color: redAccent,
                  size: 28,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.5 + 20,
            left: 24,
            right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Gummy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              "Vitamin Pills",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("\$14.50",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: secondColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.add, size: 19),
                        Text(
                          "1",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.remove, size: 19),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('About Products',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
              style: TextStyle(
                color: textColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * .85,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                )),
              ),
            ),
            SizedBox(height: 8,)
          ],
        ),
      ),
    );
  }
}
