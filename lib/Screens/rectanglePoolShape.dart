import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ocion/Constants.dart';
import 'package:ocion/components/CustomTextField.dart';
import 'package:ocion/components/customButtons.dart';

class rectanglePoolShape extends StatefulWidget {
  @override
  _rectanglePoolShapeState createState() => new _rectanglePoolShapeState();
}

class _rectanglePoolShapeState extends State<rectanglePoolShape> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String volumeInLiters = '6545 L';
    String volumeInMilliLiter = '5555 MilliLiter';
    String volumeInGallons = '56685 Gal';
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: basicColor,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text("Rectangular Pond", style: TextStyle(fontSize: height/50),),
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
                    height: height / 10,
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Image(
                    image: AssetImage("images/poolShape.png"),
                    height: height / 4.3,
                    // width: width/1.8,
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Center(
                  child: Text(
                    'Enter parameters below for your selected units ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: height / 50),
                  ),
                ),

                Center(
                  child: Container(
                    width: width / 1.1,
                    child: DataTable(
                      showBottomBorder: false,

                      columnSpacing: 2.0,
                      horizontalMargin: 3.0,
                      // showBottomBorder: false,
                      //showCheckboxColumn: true,
                      //sortAscending: true,
                      columns: [
                        // DataColumn(label: Text(
                        //     'gfgfg',
                        //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey)
                        // )),
                        DataColumn(
                            label: Text(
                              '',
                            )),
                        DataColumn(
                            label: Text('Feet',
                                style: TextStyle(
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey))),
                        DataColumn(
                            label: Text('Yard',
                                style: TextStyle(
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey))),
                        DataColumn(
                            label: Text('Meters',
                                style: TextStyle(
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey))),
                      ],
                      rows: [
                        // DataRow(
                        //
                        //   cells: [
                        //
                        //
                        //     DataCell(TextFormField(
                        //
                        //     )),
                        //     DataCell(TextFormField()),
                        //     DataCell(TextFormField()),
                        //   ],),
                        DataRow(
                          cells: [
                            DataCell(Text('Length',
                                style: TextStyle(
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey))),
                            DataCell(
                              CustomeTableField(
                                // hinttext: "Enter your measure copper concentration",
                                // obscureText: false,
                                textInputType: TextInputType.number,
                              ),
                            ),
                            DataCell(
                              CustomeTableField(
                                // hinttext: "Enter your measure copper concentration",
                                // obscureText: false,
                                textInputType: TextInputType.number,
                              ),
                            ),
                            DataCell(
                              CustomeTableField(
                                // hinttext: "Enter your measure copper concentration",
                                // obscureText: false,
                                textInputType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        DataRow(cells: [
                          DataCell(Text('Width',
                              style: TextStyle(
                                  fontSize: height / 50,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey))),
                          DataCell(
                            CustomeTableField(
                              // hinttext: "Enter your measure copper concentration",
                              // obscureText: false,
                              textInputType: TextInputType.number,
                            ),
                          ),
                          DataCell(
                            CustomeTableField(
                              // hinttext: "Enter your measure copper concentration",
                              // obscureText: false,
                              textInputType: TextInputType.number,
                            ),
                          ),
                          DataCell(
                            CustomeTableField(
                              // hinttext: "Enter your measure copper concentration",
                              // obscureText: false,
                              textInputType: TextInputType.number,
                            ),
                          ),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Depth',
                              style: TextStyle(
                                  fontSize: height / 50,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey))),
                          DataCell(
                            CustomeTableField(
                              // hinttext: "Enter your measure copper concentration",
                              // obscureText: false,
                              textInputType: TextInputType.number,
                            ),
                          ),
                          DataCell(
                            CustomeTableField(
                              // hinttext: "Enter your measure copper concentration",
                              // obscureText: false,
                              textInputType: TextInputType.number,
                            ),
                          ),
                          DataCell(
                            CustomeTableField(
                              // hinttext: "Enter your measure copper concentration",
                              // obscureText: false,
                              textInputType: TextInputType.number,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Center(
                  child: Container(
                      width: width/1.1,
                      child: Divider(
                        color: Colors.grey[70],
                        thickness: 1.0,
                      )),
                ),
                SizedBox(
                  height: height / 50,
                ),
                Center(

                  child: Container(
width: width/1.1,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Calculated Volume:',
                          style: TextStyle(
                              color: Color(0xff324980),
                              fontWeight: FontWeight.bold,
                              fontSize: height / 55),
                        ),
                        SizedBox(width: width/70,),
                        Container(
                          decoration: new BoxDecoration(
                              color: backgroundColor,
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0),
                                bottomLeft: const Radius.circular(10.0),
                                bottomRight: const Radius.circular(10.0),
                              )),
                          width: width / 3.9,
                          height: height / 15,
                          child: Center(
                              child: Text(
                                '$volumeInLiters',
                                style: TextStyle(color: Color(0xff8f8f8f), fontSize: height/65),
                              )),
                        ),
                        SizedBox(width: width/50,),
                        Container(
                          decoration: new BoxDecoration(
                              color: backgroundColor,
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0),
                                bottomLeft: const Radius.circular(10.0),
                                bottomRight: const Radius.circular(10.0),
                              )),
                          width: width / 3.9,
                          height: height / 15,
                          child: Center(
                              child: Text(
                                '$volumeInGallons',
                                style: TextStyle(color: Color(0xff8f8f8f, ), fontSize: height/65),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),


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

List<String> _product = ['Product 1', 'Product 2', 'Product 3', 'Product 4']; //
String _selectedProduct;
List<String> _volumeUnits = ['Unit 1', 'Unit 2', 'Unit 3', 'Unit 4']; //
String _selectedVolumeUnits;
