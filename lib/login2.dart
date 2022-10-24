import 'package:clase20221015/widgets/circle_widget.dart';
import 'package:flutter/material.dart';

class Login2Page extends StatelessWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF5FF),
      body: Stack(
        children: [
          //Fondo
          Stack(
            children: [
              Positioned(
                right: -120,
                top: -160,
                child: CircleWidget(radius: 160, colors: [
                  Color(0xffd94e8e),
                  Color(0xffe98db7),
                ]),
              ),
              Positioned(
                bottom: -130,
                left: -100,
                child: CircleWidget(
                  radius: 130,
                  colors: [Color(0xff564293), Color(0xff9D8AD9)],
                ),
              ),
              Positioned(
                left: 20,
                top: 40,
                child: CircleWidget(radius: 22, colors: [
                  Color(0xffd94e8e),
                  Color(0xffe98db7),
                ]),
              ),
              Positioned(
                right: 20,
                bottom: 450,
                child: CircleWidget(radius: 22, colors: [
                  Color(0xff564293),
                  Color(0xff9D8AD9),
                ]),
              ),
            ],
          ),

          //Formulario
          SafeArea(
              child: Padding(
            padding: EdgeInsets.all(40),
            child: SingleChildScrollView(
  padding: EdgeInsets.symmetric(vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Create Your \n Account!",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff564293)),
                    ),
                  ),
                  Container(
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child:
                              Icon(Icons.mail_outline, color: Color(0xff564293)),
                        ),
                        Expanded(
                          child: TextField(
                            decoration:
                            InputDecoration(hintText: "Mail Adress"),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child:
                              Icon(Icons.mail_outline, color: Color(0xff564293)),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(hintText: "Password"),
                          ),
                        ),
                        Container(
                          child: Icon(Icons.remove_red_eye, color: Color(0xff564293))
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffd94e8e).withOpacity(0.65),
                              offset: Offset(0, 12),
                              blurRadius: 20)
                        ],
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                            colors: [Color(0xffe98db7), Color(0xffd94e8e)])),
                    child: MaterialButton(
                        child: Text("Create Account"),

                        //color: Colors.pinkAccent,

                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
