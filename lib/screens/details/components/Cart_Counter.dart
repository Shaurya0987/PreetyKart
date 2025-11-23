import 'package:flutter/material.dart';
import 'package:preetykart/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildContainer(Icons.remove, () {
          if(numOfItems>1){
            setState(() {
            numOfItems--;
          });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefultPaddin),
          child: Text(
            numOfItems.toString().padLeft(2,"0"),
             style: Theme.of(context).textTheme.headlineSmall
            ),
        ),
        buildContainer(Icons.add, (){
          setState(() {
            numOfItems++;
          });
        })
      ],
    );
  }

  SizedBox buildContainer(IconData icon, VoidCallback press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
