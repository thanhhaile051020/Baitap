import 'dart:ffi';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/food/popular_food_detail.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Slider
        Container(
          // color: Colors.red,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(
                  position,
                );
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: Dimensions.heightDynamic(30),
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.widthDynamic(30)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            BigText(text: "Popular"),
            SizedBox(
              width: Dimensions.widthDynamic(10),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 3),
              child: BigText(
                text: ".",
                color: Colors.black26,
              ),
            ),
            SizedBox(width: Dimensions.widthDynamic(10)),
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              child: SmallText(text: "Food paring"),
            )
          ]),
        ),
        //list of Food and images

        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (() => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PopularFoodDetail(),
                    ))),
                child: Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.widthDynamic(20),
                      right: Dimensions.widthDynamic(20),
                      bottom: Dimensions.widthDynamic(10)),
                  child: Row(children: [
                    //img section
                    Container(
                      width: Dimensions.widthDynamic(120),
                      height: Dimensions.widthDynamic(120),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              Dimensions.roundDynamic(20)),
                          color: Colors.white38,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/food0.png"))),
                    ),
                    Expanded(
                      child: Container(
                        height: Dimensions.heightDynamic(100),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(Dimensions.roundDynamic(20)),
                              bottomRight:
                                  Radius.circular(Dimensions.roundDynamic(20)),
                            )),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.widthDynamic(10),
                              right: Dimensions.widthDynamic(10)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(
                                    text: "Nutritious fruit meal in Vietnam"),
                                SizedBox(
                                  height: Dimensions.heightDynamic(10),
                                ),
                                SmallText(text: "With chinese characteristics"),
                                SizedBox(
                                  height: Dimensions.heightDynamic(10),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconAndTextWidget(
                                        icon: Icons.circle_sharp,
                                        text: "Normal",
                                        iconColor: AppColors.iconColor1),
                                    IconAndTextWidget(
                                        icon: Icons.location_on,
                                        text: "1.7km",
                                        iconColor: AppColors.mainColor),
                                    IconAndTextWidget(
                                        icon: Icons.access_time_rounded,
                                        text: "32min",
                                        iconColor: AppColors.iconColor2)
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ) //text container
                  ]),
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      matrix = Matrix4.diagonal3Values(1, _scaleFactor, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: InkWell(
        onTap: (() => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PopularFoodDetail(),
            ))),
        child: Stack(children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/food0.png"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: Dimensions.pageViewTextContainer,
                margin: EdgeInsets.only(
                    left: Dimensions.width30,
                    right: Dimensions.width30,
                    bottom: Dimensions.height30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ],
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height15, left: 15, right: 15),
                  child: AppColumn(text: "Vietnam side"),
                )),
          )
        ]),
      ),
    );
  }
}
