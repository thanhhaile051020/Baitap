import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';
import 'package:food_delivery/widgets/icon_and_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.heightDynamic(350),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/food0.png"))),
              )),
          //icon widgets
          Positioned(
            top: Dimensions.heightDynamic(45),
            left: Dimensions.widthDynamic(20),
            right: Dimensions.widthDynamic(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          //introduction food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.heightDynamic(320),
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.widthDynamic(20),
                      right: Dimensions.widthDynamic(20),
                      top: Dimensions.heightDynamic(20)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.roundDynamic(20)),
                          topRight:
                              Radius.circular(Dimensions.roundDynamic(20)))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(
                        text: "Vietnam side",
                      ),
                      SizedBox(
                        height: Dimensions.heightDynamic(20),
                      ),
                      BigText(text: "Introduce"),
                      SizedBox(
                        height: Dimensions.heightDynamic(20),
                      ),
                      //expandable text
                      Expanded(
                        child: SingleChildScrollView(
                          child: ExpandableTextWidget(
                              text:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dolor libero, rhoncus in ullamcorper molestie, consectetur a enim. Etiam non velit vitae felis gravida faucibus a consequat magna. In ac odio metus. Aenean eleifend, nunc ac lacinia sodales, magna orci laoreet magna, id dapibus arcu erat sit amet quam. Duis vitae fermentum justo, sed blandit nulla. Pellentesque et magna mollis, convallis eros in, aliquet ligula. Morbi dapibus molestie dolor id condimentum. Nunc ut gravida nulla. Morbi cursus, nibh feugiat aliquet mattis, urna lorem venenatis metus, nec tincidunt nisl dui ac tellus. Donec vitae massa non libero luctus molestie vel at urna. Quisque posuere tempus sem. Vivamus sit amet lacus id magna gravida porta. Phasellus vel aliquet turpisLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dolor libero, rhoncus in ullamcorper molestie, consectetur a enim. Etiam non velit vitae felis gravida faucibus a consequat magna. In ac odio metus. Aenean eleifend, nunc ac lacinia sodales, magna orci laoreet magna, id dapibus arcu erat sit amet quam. Duis vitae fermentum justo, sed blandit nulla. Pellentesque et magna mollis, convallis eros in, aliquet ligula. Morbi dapibus molestie dolor id condimentum. Nunc ut gravida nulla. Morbi cursus, nibh feugiat aliquet mattis, urna lorem venenatis metus, nec tincidunt nisl dui ac tellus. Donec vitae massa non libero luctus molestie vel at urna. Quisque posuere tempus sem. Vivamus sit amet lacus id magna gravida porta. Phasellus vel aliquet turpisLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dolor libero, rhoncus in ullamcorper molestie, consectetur a enim. Etiam non velit vitae felis gravida faucibus a consequat magna. In ac odio metus. Aenean eleifend, nunc ac lacinia sodales, magna orci laoreet magna, id dapibus arcu erat sit amet quam. Duis vitae fermentum justo, sed blandit nulla. Pellentesque et magna mollis, convallis eros in, aliquet ligula. Morbi dapibus molestie dolor id condimentum. Nunc ut gravida nulla. Morbi cursus, nibh feugiat aliquet mattis, urna lorem venenatis metus, nec tincidunt nisl dui ac tellus. Donec vitae massa non libero luctus molestie vel at urna. Quisque posuere tempus sem. Vivamus sit amet lacus id magna gravida porta. Phasellus vel aliquet turpisLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dolor libero, rhoncus in ullamcorper molestie, consectetur a enim. Etiam non velit vitae felis gravida faucibus a consequat magna. In ac odio metus. Aenean eleifend, nunc ac lacinia sodales, magna orci laoreet magna, id dapibus arcu erat sit amet quam. Duis vitae fermentum justo, sed blandit nulla. Pellentesque et magna mollis, convallis eros in, aliquet ligula. Morbi dapibus molestie dolor id condimentum. Nunc ut gravida nulla. Morbi cursus, nibh feugiat aliquet mattis, urna lorem venenatis metus, nec tincidunt nisl dui ac tellus. Donec vitae massa non libero luctus molestie vel at urna. Quisque posuere tempus sem. Vivamus sit amet lacus id magna gravida porta. Phasellus vel aliquet turpis"),
                        ),
                      )
                    ],
                  ))),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.heightDynamic(120),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.roundDynamic(40)),
                topRight: Radius.circular(Dimensions.roundDynamic(40)))),
        padding: EdgeInsets.only(
            top: Dimensions.heightDynamic(30),
            bottom: Dimensions.heightDynamic(30),
            left: Dimensions.widthDynamic(20),
            right: Dimensions.widthDynamic(20)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: EdgeInsets.only(
                top: Dimensions.heightDynamic(20),
                bottom: Dimensions.heightDynamic(20),
                left: Dimensions.widthDynamic(20),
                right: Dimensions.widthDynamic(20)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.roundDynamic(20),
                ),
                color: Colors.white),
            child: Row(children: [
              Icon(
                Icons.remove,
                color: AppColors.signColor,
              ),
              SizedBox(
                width: Dimensions.widthDynamic(5),
              ),
              BigText(text: "0"),
              SizedBox(
                width: Dimensions.widthDynamic(5),
              ),
              Icon(
                Icons.add,
                color: AppColors.signColor,
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(
                top: Dimensions.heightDynamic(20),
                bottom: Dimensions.heightDynamic(20),
                left: Dimensions.widthDynamic(20),
                right: Dimensions.widthDynamic(20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.roundDynamic(20)),
              color: AppColors.mainColor,
            ),
            child: BigText(
              text: "\$10 | Add to cart",
              color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}
