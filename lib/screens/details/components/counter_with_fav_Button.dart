import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:preetykart/screens/details/components/Cart_Counter.dart';

class CounterWithfavEmoji extends StatelessWidget {
  const CounterWithfavEmoji({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}

