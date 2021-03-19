import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:ocion/Constants.dart';
import 'package:ocion/components/CustomTextField.dart';
import 'package:ocion/components/customButtons.dart';

class calculateVolume extends StatefulWidget {
  @override
  _calculateVolumeState createState() => new _calculateVolumeState();
}

class _calculateVolumeState extends State<calculateVolume> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String volumeInLiters = '6545 L';
    String volumeInMilliLiter = '5555 FL. OZ.';
    String volumeInGallons = '56685 ml.';
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: basicColor,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text("Home"),
          centerTitle: true,
        ),
        // appBar: customAppBar1("Sign In"),

        body: SingleChildScrollView(
          child: Container(
            // color: whiteColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: height / 30,
                ),
                Center(
                  child: Image(
                    image: AssetImage("images/logo.png"),
                    height: height / 6,
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Form(
                    child: Column(
                  children: [

                    Text("OCION BLUE\u{2122}Calculator",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: height/45, color: basicColor),
                      textAlign: TextAlign.center,),
                    SizedBox(
                      height: height / 60,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                        width: width / 1.1,
                        height: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xfff0f2f6),
                        ),
                        //TODO:CATEGORY DROPDOWN
                        child: DropdownButton(
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: Text(
                            'Select the OCION product',
                            style: TextStyle(color: Color(0xff8f8f8f)),
                          ), // Not necessary for Option 1
                          value: _selectedProduct,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedProduct = newValue;
                            });
                          },
                          items: _product.map((location) {
                            return DropdownMenuItem(

                              child: Text(location,),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 60,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                        width: width / 1.1,
                        height: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xfff0f2f6),
                        ),
                        //TODO:CATEGORY DROPDOWN
                        child: DropdownButton(
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: Text(
                            'Select volume units',
                            style: TextStyle(color: Color(0xff8f8f8f)),
                          ), // Not necessary for Option 1
                          value: _selectedVolumeUnits,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedVolumeUnits = newValue;
                            });
                          },
                          items: _volumeUnits.map((location) {
                            return DropdownMenuItem(
                              child: Text(location),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 60,
                    ),
                    Center(
                      child: CustomTextField(
                        hinttext: "Enter the volume to be treated",
                        obscureText: false,
                        textInputType: TextInputType.number,
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: height / 60,
                ),
                Center(
                  child: CustomTextField(
                    hinttext: "Enter the measure copper concentration",
                    obscureText: false,
                    textInputType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Answer : ',
                            style: TextStyle(
                                color: Color(0xff324980),
                                fontWeight: FontWeight.bold,
                                fontSize: height / 40)),
                        TextSpan(
                          text: 'Product Volume Required',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: height / 50),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: new BoxDecoration(
                            color: backgroundColor,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(10.0),
                              topRight: const Radius.circular(10.0),
                              bottomLeft: const Radius.circular(10.0),
                              bottomRight: const Radius.circular(10.0),
                            )),
                        width: width / 3.3,
                        height: height / 15,
                        child: Center(
                            child: Text(
                          '$volumeInLiters',
                          style: TextStyle(color: Color(0xff8f8f8f), fontSize: height/65),
                        )),
                      ),
                      Container(
                        decoration: new BoxDecoration(
                            color: backgroundColor,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(10.0),
                              topRight: const Radius.circular(10.0),
                              bottomLeft: const Radius.circular(10.0),
                              bottomRight: const Radius.circular(10.0),
                            )),
                        width: width / 3.3,
                        height: height / 15,
                        child: Center(
                            child: Text(
                          '$volumeInMilliLiter',
                          style: TextStyle(color: Color(0xff8f8f8f), fontSize: height/65)),
                        )),

                      Container(
                        decoration: new BoxDecoration(
                            color: backgroundColor,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(10.0),
                              topRight: const Radius.circular(10.0),
                              bottomLeft: const Radius.circular(10.0),
                              bottomRight: const Radius.circular(10.0),
                            )),
                        width: width / 3.3,
                        height: height / 15,
                        child: Center(
                            child: Text(
                          '$volumeInGallons',
                          style: TextStyle(color: Color(0xff8f8f8f), fontSize: height/65)),
                        )),

                    ],
                  ),
                ),
                SizedBox(
                  height: height / 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      resetButton(
                        text: Text("Reset",
                        ),
                        onPressed: (){
                          // Navigator.pushNamed(context, "/CalculateVolume");
                        },
                        // focusColor: Colors.red,
                        // disbaleColor: Colors.black,
                      ),
                      volumeCalculate(
                        text: Text("Calculate Volume",
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, "/SelectOption");
                        },
                        // focusColor: Colors.red,
                        // disbaleColor: Colors.black,
                      ),
                    ],),
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 12.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Text(
                //         'Volume Calculate',
                //         style: TextStyle(
                //             color: Color(0xff324980),
                //             fontWeight: FontWeight.bold,
                //             fontSize: height / 40),
                //       ),
                //      SizedBox(width: width/25,),
                //
                //       Center(
                //         child: walkthroghButton(
                //             iconss: Icon(Icons.arrow_forward,color: Colors.white,),
                //             colorss: Colors.black,
                //             focusColor: backgroundColor,
                //             disbaleColor: Colors.blue,
                //             onPressed: () =>
                //                 Navigator.pushNamed(context, "/EllipticalShape")
                //
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                // Image(
                //   image: AssetImage("images/bottomAnimation.png"),
                //   height: height / 4,
                //   fit: BoxFit.fill,
                //   // width: width/0.8,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> _product = ['OCION BLUE\u{2122}', ]; //
String _selectedProduct;
List<String> _volumeUnits = ['LITERS', 'IMP.GALLONS' ,'US GALLONS' ]; //
String _selectedVolumeUnits;
