import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/auth/login.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/extension/toColor.dart';
import 'package:food_delivery/widgets/input.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/background.png"),
                fit: BoxFit.fill)),
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BigText(
                    text: "Register",
                    color: "#2f81ed".toColor(),
                    size: Dimensions.fontDynamic(30),
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height15),
              InputWidget(
                  hintText: 'Enter your your username',
                  validateText: 'Please enter your username'),
              SizedBox(
                height: Dimensions.heightDynamic(20),
              ),
              InputWidget(
                  hintText: 'Enter your your phone number',
                  validateText: 'Please enter your username'),
              SizedBox(
                height: Dimensions.heightDynamic(20),
              ),
              InputWidget(
                  hintText: 'Enter your your email',
                  validateText: 'Please enter your username'),
              SizedBox(
                height: Dimensions.heightDynamic(20),
              ),
              InputWidget(
                  hintText: 'Enter your your password',
                  validateText: 'Please enter your password'),
              Container(
                height: Dimensions.heightDynamic(200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: Dimensions.heightDynamic(70),
                          width: Dimensions.widthDynamic(110),
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          margin: EdgeInsets.only(
                              bottom: Dimensions.heightDynamic(20)),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(),
                                    ));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: "2F80ED".toColor(),
                              shadowColor: Color(0x80000000),
                              side: BorderSide(
                                width: 1.0,
                                color: Colors.white,
                              ),
                            ),
                            child: Container(
                                decoration:
                                    BoxDecoration(color: "2F80ED".toColor()),
                                child: BigText(
                                  text: 'Register',
                                  size: Dimensions.fontDynamic(20),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
