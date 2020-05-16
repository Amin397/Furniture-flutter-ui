import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    width: double.infinity,
                    color: Color(getColorHexFromStr('#FDD148')),
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.white.withOpacity(0.15)),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 200.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.white.withOpacity(0.15)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, left: 16.0, right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              height: 65.0,
                              width: 65.0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 2.0,
                                      style: BorderStyle.solid),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/chris.jpg"))),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          'Hello , Pino',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'QuickSand',
                              fontSize: 32.0,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'What do you want to buy ?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'QuickSand',
                              fontSize: 26.0,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Color(getColorHexFromStr("#FDD148")),
                                    size: 28.0,
                                  ),
                                  contentPadding: const EdgeInsets.only(
                                      left: 15.0, top: 15.0),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                      color: Colors.black45, fontSize: 18.0)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Material(
                    elevation: 2.5,
                    child: Container(
                      height: 75.0,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/dresser.png"))),
                            ),
                            Text(
                              'Dresses',
                              style: TextStyle(fontFamily: 'QuickSand'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/sofas.png"))),
                            ),
                            Text(
                              'Sofa',
                              style: TextStyle(fontFamily: 'QuickSand'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/desks.png"))),
                            ),
                            Text(
                              'Desks',
                              style: TextStyle(fontFamily: 'QuickSand'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/dressers.png"))),
                            ),
                            Text(
                              'Dresses',
                              style: TextStyle(fontFamily: 'QuickSand'),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              itemCard("FinnNavian", "assets/images/ottoman.jpg", true),
              itemCard("FinnNavian", "assets/images/chair.jpg", false),
              itemCard("FinnNavian", "assets/images/anotherchair.jpg", false),
              itemCard("FinnNavian", "assets/images/ottoman.jpg", true),
            ],
          )
        ],
      ),
    );
  }

  Widget itemCard(String title, String imagePath, bool favorite) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Material(
        elevation: 2.0,
        child: Container(
          height: 165.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(8.0),
                height: 165.0,
                width: 140.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              fontFamily: 'QuickSand',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Material(
                          elevation: !favorite ? 0.0 : 3.0,
                          borderRadius: BorderRadius.circular(100.0),
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white),
                            child: Center(
                              child: favorite
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.redAccent,
                                    )
                                  : Icon(
                                      Icons.favorite,
                                      color: Colors.grey,
                                    ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 175.0,
                    child: Text(
                      'Scandinavian small sized double sofa imported full leather'
                      ' / Dale Italia oil wax leather black',
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontFamily: 'QuickSand'),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40.0,
                      ),
                      Container(
                        height: 43.0,
                        width: 60.0,
                        color: Color(getColorHexFromStr('#F9C335')),
                        child: Center(
                          child: Text(
                            '\$ 248',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 43.0,
                        width: 123.0,
                        color: Color(getColorHexFromStr('#FEDD59')),
                        child: Center(
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
