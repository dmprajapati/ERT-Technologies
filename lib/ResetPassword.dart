import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class ResetPassword extends StatefulWidget {
  @override
  _ResetPassword createState() => _ResetPassword();
}

class _ResetPassword extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width;
    double hight = MediaQuery. of(context). size. height;
    double space;
    double space_up;
    space = width / hight;
    space_up = space;
    if (hight < width) {
      space_up = space / 6;
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Container(
          width: width,
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(70),
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('assets/final.png'),
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child:Column(
                  children: <Widget>[
                    Text("Reset Password",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.w400, fontFamily: 'design.graffiti.comicsansms'),),
                    Container(
                      height: hight/16,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: new Border.all(
                          color: Colors.black,
                          width: .2,
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      padding: EdgeInsets.all(3),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child:  new TextField(
                              obscureText: true,
                              textAlign: TextAlign.start,
                              //textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: hight/45,
                                  //height: hight/50,
                                  color: Colors.black
                              ),
                              decoration: new InputDecoration(
                                hintText: '   Password',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: hight/16,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: new Border.all(
                          color: Colors.black,
                          width: .2,
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      padding: EdgeInsets.all(3),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child:  new TextField(
                              obscureText: true,
                              textAlign: TextAlign.start,
                              //textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: hight/45,
                                  //height: hight/50,
                                  color: Colors.black
                              ),
                              decoration: new InputDecoration(
                                hintText: '  confirm password',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        onPressed:(){
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        },
                        color: Colors.black,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child:Center(
                          child: Text("Submit",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'design.graffiti.comicsansms'),),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20,20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child:Text(" "),
                          ),
                          GestureDetector(
                            onTap: () {
                            },
                            child: Text("Click here to Login ",style: TextStyle(color: Colors.blue, fontSize: 15,fontFamily: 'design.graffiti.comicsansms'),),
                          ),
                          Expanded(
                            child:Text(" "),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}