import 'package:flutter/material.dart';

class Repeate_contanier extends StatelessWidget {
  Repeate_contanier({@required this.colors, this.cardWidge, this.onpressed});
  final Color colors;
  final Widget cardWidge;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        child: cardWidge,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadiusDirectional.circular(15.0)),
      ),
    );
  }
}
