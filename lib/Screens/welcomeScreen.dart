import 'package:flutter/material.dart';
import 'package:ocion/Constants.dart';
import 'package:ocion/components/customButtons.dart';

class welcomeScreen extends StatefulWidget {
  @override
  _welcomeScreenState createState() => new _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),

        // appBar: customAppBar1("Sign In"),

        body: SingleChildScrollView(
          child: Container(
            // color: whiteColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: height/30,),
                Center(
                  child: Image(
                    image: AssetImage("images/logo.png"),
                    height: height / 6,
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Center(
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Welcome To ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: height / 40)),
                        TextSpan(
                            text: 'OCION BLUE ',
                            style: TextStyle(
                                color: Color(0xff324980),
                                fontWeight: FontWeight.bold,
                                fontSize: height / 40)),
                        TextSpan(
                          text: 'Calculator',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: height / 40),
                        ),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: Text(
                    'www.ocionblue.com',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: height / 60),
                  ),
                ),
                SizedBox(
                  height: height / 80,
                ),
                Center(
                  child: Image(
                    image: AssetImage("images/welcomePic.png"),
                    height: height / 2.7,
                  // width: width/0.9,
                    fit: BoxFit.contain,
                  ),
                ),

    SizedBox(
    height: height / 50,
    ),
                Center(
                  child: walkthroghButton(
                    iconss: Icon(Icons.arrow_forward,color: Colors.white,),
                    colorss: Colors.black,
                    focusColor: backgroundColor,
                    disbaleColor: Colors.blue,
                    onPressed: () =>
                         Navigator.pushNamed(context, "/CalculateVolume")

                  ),
                ),
                Image(
                  image:  AssetImage("images/bottomAnimation.png"),
                  height: height/4,
                  fit: BoxFit.fill,
                  // width: width/0.8,

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
