import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app_web1/home1.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            /*decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/b.jpg"),
                fit: BoxFit.cover,
              ),
            ),*/
            //color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('About',style: TextStyle(
                          color: Colors.white
                      ),),
                      SizedBox(width: 20,),
                      FlatButton(
                        child: Text('Projects',style: TextStyle(
                            color: Colors.white
                        ),),
                        onPressed: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home1()),
                          );
                        },
                      ),
                      SizedBox(width: 20,),
                      FlatButton(
                        child: Text('Contact',style: TextStyle(
                            color: Colors.white
                        ),),
                        onPressed: (){

                        },
                      ),
                      SizedBox(width: 40,),

                    ],
                  ),
                ),


                Row(
                  children: [
                  Expanded(
                      flex: 1,child: Container(
                    color: Color(0xff45a29e),
                        child: Image.asset('images/bl.jpg', //width: 300,
                    //height: 300,
                  ),
                      )),


                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment(-0.5, -0.5),
                      //margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Satya Routray', style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          //textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Android developer | ',style: TextStyle(
                                //fontSize: 30,
                                //fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                              Text('Flutter developer', style: TextStyle(
                                //fontSize: 30,
                                //fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),



                    /*Row(
                      children: [
                        FlatButton(child: Text('Hire Me'),
                          onPressed: (){},
                        ),
                        FlatButton(child: Text('Portfolio'),
                          onPressed: (){},
                        )
                      ],
                    )*/
                ],
              ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
