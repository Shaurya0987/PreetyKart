import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:preetykart/constants.dart';
import 'package:preetykart/modals/product.dart';
import 'package:preetykart/screens/details/components/Cart_Counter.dart';
import 'package:preetykart/screens/details/components/add_to_cart.dart';
import 'package:preetykart/screens/details/components/colorAndSize.dart';
import 'package:preetykart/screens/details/components/counter_with_fav_Button.dart';
import 'package:preetykart/screens/details/components/description.dart';
import 'package:preetykart/screens/details/components/project_title_with_image.dart';

class BodyScreen extends StatelessWidget {
  final Product product;
  const BodyScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefultPaddin,
                    right: kDefultPaddin,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      colorAndWidget(product: product),
                      SizedBox(height: kDefultPaddin/2,),
                      Description(product: product),
                      SizedBox(height: kDefultPaddin,),
                      CounterWithfavEmoji(),
                      SizedBox(height: kDefultPaddin*2,),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

