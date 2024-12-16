import 'package:flutter/material.dart';

class customCard extends StatelessWidget {
  const customCard(
      {super.key,
      this.childWidget,
      this.title,
      this.height,
      this.width,
      this.radius,
      this.radiusCircle,
      this.columRow,
      this.image});
  final Widget? childWidget;
  final Widget? columRow;
  final String? title;
  final double? height;
  final double? width;
  final double? radius;
  final double? radiusCircle;
  final ImageProvider? image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(radius!)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: radiusCircle,
              backgroundImage: image,
              child: childWidget,
            ),
            Text(title.toString()),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
