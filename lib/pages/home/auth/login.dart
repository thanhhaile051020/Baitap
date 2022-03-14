import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/auth/register.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/extension/toColor.dart';
import 'package:food_delivery/widgets/input.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    text: "LOGIN",
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
                  hintText: 'Enter your your password',
                  validateText: 'Please enter your password'),
              Container(
                height: Dimensions.heightDynamic(300),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(bottom: Dimensions.heightDynamic(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Register(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0.0,
                                shadowColor: Colors.transparent,
                                padding: EdgeInsets.only(
                                    top: Dimensions.heightDynamic(20))
                                // side: BorderSide(
                                //   width: 1.0,
                                //   color: Colors.white,
                                // ),
                                ),
                            child: BigText(
                              text: "Register",
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: Dimensions.heightDynamic(70),
                            width: Dimensions.widthDynamic(100),
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainFoodPage(),
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
                                    text: 'Login',
                                    size: Dimensions.fontDynamic(20),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                  )),
                            ),
                          ),
                        ],
                      ),
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
