import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'portfolio.dart';

class home1 extends StatefulWidget {
  @override
  _home1State createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF4F1de),//Color(0xfff2cc8f),//Color(0xffF1F0EB),
          body: Container(
            child: Container(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: ClippingClass(),
                          child: Container(
                            color: Color(0xfff2cc8f),//Color(0xffF4F1de),//Color(0xff4056a1),
                              height: MediaQuery.of(context).size.height,//double.infinity,
                              child: Row(
                                children: [

                                ],
                              )

                          ),
                        ),
                        Positioned(
                          child: Image.asset('images/bg.png', //height: 200, width: 200,
                          ),
                        ),

                      ] ,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex:1,
                                child: Text('About',style: TextStyle(
                                    color: Color(0xfff2cc8f),
                                  fontSize: 20
                                ),),
                              ),
                              //SizedBox(width: 20,),
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
                              //SizedBox(width: 20,),
                              Expanded(
                                flex: 1,
                                child: FlatButton(
                                  child: Text('Contact',style: TextStyle(
                                      color: Color(0xff3d405b)
                                  ),),
                                  onPressed: (){

                                    print(MediaQuery.of(context).size.width);
                                  },
                                ),
                              ),
                              //SizedBox(width: 10,),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width > 960? 70: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 40),
                            child: MediaQuery.of(context).size.width > 960? Image.asset('images/device.png',):
                            Image.asset('images/device1.png',),
                            /*Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Satya Routray', style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff95C3C1)
                                ),
                                  //textAlign: TextAlign.start,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Android developer | Flutter developer',
                                  style: TextStyle(
                                    fontSize: 18,
                                    //color: Colors.white,
                                    color: MediaQuery.of(context).size.width > 960? Colors.white: Colors.black
                                  ),
                                ),

                                SizedBox(
                                  height: 30,
                                ),
                                Text('I\'m an Independent Freelance Native Android Application Developer and Flutter Developer, based in Hyderabad, India. '
                                    '\nGot an idea?, let\'s discuss ...',
                                  style: TextStyle(
                                      //fontSize: 18,
                                      color: Color(0xff95C3C1)
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: RawMaterialButton(
                                        onPressed: () {},
                                        elevation: 2.0,
                                        fillColor: Colors.white,
                                        child: Icon(
                                          //Foundation.social_github,
                                          Zocial.github
                                        ),
                                        //padding: EdgeInsets.all(15.0),
                                        shape: CircleBorder(),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: RawMaterialButton(
                                        onPressed: () {},
                                        elevation: 2.0,
                                        fillColor: Colors.white,
                                        child: Icon(
                                          //Foundation.social_linkedin,
                                          Zocial.linkedin
                                        ),
                                        //padding: EdgeInsets.all(15.0),
                                        shape: CircleBorder(),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: RawMaterialButton(
                                        onPressed: () {},
                                        elevation: 2.0,
                                        fillColor: Colors.white,
                                        child: Icon(
                                          //Foundation.social_instagram,
                                          Zocial.instagram
                                        ),
                                        //padding: EdgeInsets.all(15.0),
                                        shape: CircleBorder(),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: RawMaterialButton(
                                        onPressed: () {},
                                        elevation: 2.0,
                                        fillColor: Colors.white,
                                        child: Icon(
                                          //Foundation.social_youtube,
                                          Zocial.youtube
                                        ),
                                        //padding: EdgeInsets.all(15.0),
                                        shape: CircleBorder(),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),*/
                          ),
                        ),
                      ],
                    )

                  )
                ],
              )
            ),
          ),
      ),
    );
  }
}
class ClippingClass extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    //throw UnimplementedError();

    var path = Path();
    path.lineTo(0.0, size.height);
    //path.quadraticBezierTo(size.width/3, size.height/2, size.width/2, size.height/3);
    path.lineTo(size.width/2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}

//950