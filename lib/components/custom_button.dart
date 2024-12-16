import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.childWidget,
      this.columRow,
      this.title,
      this.height,
      this.width,
      this.radius,
      this.radiusCircle,
      this.isContainer});
  final Widget? childWidget;
  final Widget? columRow;
  final String? title;
  final double? height;
  final double? width;
  final double? radius;
  final double? radiusCircle;
  final bool? isContainer;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(radius!)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            isContainer == true
                ? CircleAvatar(
                    radius: radiusCircle,
                    child: childWidget,
                  )
                : Container(),
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
