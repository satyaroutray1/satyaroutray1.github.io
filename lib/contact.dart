import 'package:flutter/material.dart';
import 'package:flutter_app_web1/home1.dart';
import 'package:flutter_app_web1/portfolio.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffF4F1de),
          body: Container(
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
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex:1,
                                child: FlatButton(
                                  child: Text('About',style: TextStyle(
                                      color: Color(0xff3d405b),
                                  ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => home1()),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: FlatButton(
                                  child: Text('Projects',style: TextStyle(
                                      color: Color(0xff3d405b)
                                  ),),
                                  onPressed: (){

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Portfolio()),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('Contact',style: TextStyle(
                                    color: Color(0xfff2cc8f),
                                    fontSize: 20
                                ),),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                alignment: Alignment.center,
                                child: Text('Get in Touch',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height/8,
                                  wordSpacing: 10,
                                  letterSpacing: 3,

                                ),),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('If you have an idea, you wanna discuss or got a project, you want me to work on or wanna collaborate or just wanna say \'hi\', drop me a message',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xfff2cc8f)
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text('Email: '),
                                  Text('sroutraykec@gmail.com',
                                    style: TextStyle(
                                        color: Color(0xfff2cc8f),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex:1,
                                    child: IconButton(
                                        icon: Icon(Entypo.github),
                                    onPressed: (){

                                    },),
                                  ),
                                  Expanded(
                                    flex:1,
                                    child: IconButton(
                                      icon: Icon(Entypo.linkedin),
                                      onPressed: (){

                                      },),
                                  ),
                                  Expanded(
                                    flex:1,
                                    child: IconButton(
                                      icon: Icon(Entypo.instagram),
                                      onPressed: (){

                                      },),
                                  ),
                                  Expanded(
                                    flex:1,
                                    child: IconButton(
                                      icon: Icon(Entypo.youtube),
                                      onPressed: (){

                                      },),
                                  ),

                                ],
                              )
                            ],
                          )
                        ),
                      )
                    ],
                  ),
                ],
              )
            ),
        ),
    );
  }
}
