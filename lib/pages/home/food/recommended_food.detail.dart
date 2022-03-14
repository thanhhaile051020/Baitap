import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.heightDynamic(70),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.roundDynamic(20)),
                        topRight:
                            Radius.circular(Dimensions.roundDynamic(20)))),
                child: Center(
                    child: BigText(
                  text: "Vietnam sides",
                  size: Dimensions.fontDynamic(26),
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                    top: Dimensions.heightDynamic(5),
                    bottom: Dimensions.heightDynamic(10)),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions.heightDynamic(300),
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/image/food0.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.widthDynamic(20),
                        right: Dimensions.widthDynamic(20)),
                    child: ExpandableTextWidget(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo orci et leo egestas, vel tincidunt ligula commodo. Nulla imperdiet purus nec magna porta, nec sodales diam rhoncus. Praesent in tellus sit amet neque tempus dignissim. Suspendisse feugiat nulla eget orci laoreet ullamcorper. Etiam in dui a elit pharetra commodo nec quis mi. Curabitur nec egestas mi. Donec sem elit, venenatis ut placerat sit amet, gravida in arcu. Ut tempus sem nisi, eget elementum metus bibendum ac. Quisque convallis purus in enim consectetur tempus. Integer vitae hendrerit ipsum, nec convallis sem. Pellentesque ultrices fermentum massa. Nulla suscipit elit vitae magna varius sollicitudin. Aliquam tristique, mi et pretium sagittis, ligula metus vulputate lectus, ac convallis nulla nisi et nisl. Duis lorem nisi, hendrerit nec elementum non, fringilla scelerisque diam. Nulla iaculis erat id tortor imperdiet sodales. Pellentesque pretium augue cursus quam ultricies, quis auctor enim malesuada.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo orci et leo egestas, vel tincidunt ligula commodo. Nulla imperdiet purus nec magna porta, nec sodales diam rhoncus. Praesent in tellus sit amet neque tempus dignissim. Suspendisse feugiat nulla eget orci laoreet ullamcorper. Etiam in dui a elit pharetra commodo nec quis mi. Curabitur nec egestas mi. Donec sem elit, venenatis ut placerat sit amet, gravida in arcu. Ut tempus sem nisi, eget elementum metus bibendum ac. Quisque convallis purus in enim consectetur tempus. Integer vitae hendrerit ipsum, nec convallis sem. Pellentesque ultrices fermentum massa. Nulla suscipit elit vitae magna varius sollicitudin. Aliquam tristique, mi et pretium sagittis, ligula metus vulputate lectus, ac convallis nulla nisi et nisl. Duis lorem nisi, hendrerit nec elementum non, fringilla scelerisque diam. Nulla iaculis erat id tortor imperdiet sodales. Pellentesque pretium augue cursus quam ultricies, quis auctor enim malesuada.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo orci et leo egestas, vel tincidunt ligula commodo. Nulla imperdiet purus nec magna porta, nec sodales diam rhoncus. Praesent in tellus sit amet neque tempus dignissim. Suspendisse feugiat nulla eget orci laoreet ullamcorper. Etiam in dui a elit pharetra commodo nec quis mi. Curabitur nec egestas mi. Donec sem elit, venenatis ut placerat sit amet, gravida in arcu. Ut tempus sem nisi, eget elementum metus bibendum ac. Quisque convallis purus in enim consectetur tempus. Integer vitae hendrerit ipsum, nec convallis sem. Pellentesque ultrices fermentum massa. Nulla suscipit elit vitae magna varius sollicitudin. Aliquam tristique, mi et pretium sagittis, ligula metus vulputate lectus, ac convallis nulla nisi et nisl. Duis lorem nisi, hendrerit nec elementum non, fringilla scelerisque diam. Nulla iaculis erat id tortor imperdiet sodales. Pellentesque pretium augue cursus quam ultricies, quis auctor enim malesuada.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo orci et leo egestas, vel tincidunt ligula commodo. Nulla imperdiet purus nec magna porta, nec sodales diam rhoncus. Praesent in tellus sit amet neque tempus dignissim. Suspendisse feugiat nulla eget orci laoreet ullamcorper. Etiam in dui a elit pharetra commodo nec quis mi. Curabitur nec egestas mi. Donec sem elit, venenatis ut placerat sit amet, gravida in arcu. Ut tempus sem nisi, eget elementum metus bibendum ac. Quisque convallis purus in enim consectetur tempus. Integer vitae hendrerit ipsum, nec convallis sem. Pellentesque ultrices fermentum massa. Nulla suscipit elit vitae magna varius sollicitudin. Aliquam tristique, mi et pretium sagittis, ligula metus vulputate lectus, ac convallis nulla nisi et nisl. Duis lorem nisi, hendrerit nec elementum non, fringilla scelerisque diam. Nulla iaculis erat id tortor imperdiet sodales. Pellentesque pretium augue cursus quam ultricies, quis auctor enim malesuada.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo orci et leo egestas, vel tincidunt ligula commodo. Nulla imperdiet purus nec magna porta, nec sodales diam rhoncus. Praesent in tellus sit amet neque tempus dignissim. Suspendisse feugiat nulla eget orci laoreet ullamcorper. Etiam in dui a elit pharetra commodo nec quis mi. Curabitur nec egestas mi. Donec sem elit, venenatis ut placerat sit amet, gravida in arcu. Ut tempus sem nisi, eget elementum metus bibendum ac. Quisque convallis purus in enim consectetur tempus. Integer vitae hendrerit ipsum, nec convallis sem. Pellentesque ultrices fermentum massa. Nulla suscipit elit vitae magna varius sollicitudin. Aliquam tristique, mi et pretium sagittis, ligula metus vulputate lectus, ac convallis nulla nisi et nisl. Duis lorem nisi, hendrerit nec elementum non, fringilla scelerisque diam. Nulla iaculis erat id tortor imperdiet sodales. Pellentesque pretium augue cursus quam ultricies, quis auctor enim malesuada."),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.only(
              left: Dimensions.widthDynamic(50),
              right: Dimensions.widthDynamic(50),
              top: Dimensions.heightDynamic(10),
              bottom: Dimensions.heightDynamic(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                icon: Icons.remove,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                iconSize: Dimensions.iconDynamic(24),
              ),
              BigText(
                  text: "\$12.88 " + " X " + " 0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.fontDynamic(26)),
              AppIcon(
                icon: Icons.add,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                iconSize: Dimensions.iconDynamic(24),
              ),
            ],
          ),
        ),
        Container(
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
              child: Icon(
                Icons.favorite,
                color: AppColors.mainColor,
                size: Dimensions.iconDynamic(24),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.heightDynamic(20),
                  bottom: Dimensions.heightDynamic(20),
                  left: Dimensions.widthDynamic(20),
                  right: Dimensions.widthDynamic(20)),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Dimensions.roundDynamic(20)),
                color: AppColors.mainColor,
              ),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
