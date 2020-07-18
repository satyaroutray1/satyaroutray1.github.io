import 'package:flutter/material.dart';
import 'package:flutter_app_web1/home1.dart';

import 'contact.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;


  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
      print('${_enterCounter}');
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      _exitCounter++;
      _enterCounter = 0;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffF4F1de),

            body: SingleChildScrollView(
              child: Container(

                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex:1,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => home1()),
                                    );
                                  },
                                  child: Text('About',style: TextStyle(
                                      color: Color(0xff3d405b),
                                      fontSize: 14
                                  ),),
                                ),
                              ),
                              //SizedBox(width: 20,),
                              Expanded(
                                flex: 1,
                                child: Text('Projects',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xfff2cc8f),
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              //SizedBox(width: 20,),
                              Expanded(
                                flex: 1,
                                child: FlatButton(
                                  child: Text('Contact',style: TextStyle(
                                      color: Color(0xff3d405b)
                                  ),),
                                  onPressed: (){

                                    //print(MediaQuery.of(context).size.width);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Contact()),
                                    );
                                  },
                                ),
                              ),
                              //SizedBox(width: 10,),

                            ],
                          ),
                        ),
                      ],
                    ),

                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              MyCard('images/fooddeliveryF.jpg'),
                              MyCard('images/groceryshoppingF.jpg'),
                              MyCard('images/amzycareA.jpg'),
                              MyCard('images/watchF.jpg'),

                            ],
                          ),
                          Row(
                            children: [
                              MyCard('images/chatF.jpg'),
                              MyCard('images/rainbowclosetA.jpg'),
                              MyCard('images/locationtrackerA.jpg'),
                              MyCard('images/tasktrackerF.jpg'),
                            ],
                          ),
                          Row(
                            children: [

                              MyCard('images/1.jpg'),
                              MyCard('images/2.jpg'),
                              MyCard('images/moviedbF.jpg'),
                              MyCard('images/3.jpg'),
                            ],
                          ),
                          Row(
                            children: [
                              MyCard('images/4.jpg'),
                              MyCard('images/alchemyA.jpg'),
                              MyCard('images/resevationA.jpg'),
                              MyCard('images/todoA.jpg'),
                            ],
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
        ),
    );
  }
}

class MyCard extends StatefulWidget {
  String image;

  MyCard(this.image);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int _enterCounter = 0;
  int _exitCounter = 0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
      print('${_enterCounter}');
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      _exitCounter++;
      _enterCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Card(
          margin: _enterCounter == 1? EdgeInsets.all(5): EdgeInsets.all(25),
          color: Colors.transparent,
          child: MouseRegion(
              onEnter: _incrementEnter,
              onExit: _incrementExit,
              child: Image.asset(widget.image, fit: BoxFit.contain,)),
          elevation: _enterCounter == 1? 30: 5,
        )
    );
  }
}
