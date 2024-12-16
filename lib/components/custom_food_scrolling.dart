import 'package:flutter/material.dart';

class CustomFoodScrolling extends StatelessWidget {
  const CustomFoodScrolling({
    super.key,
    this.foodDescription,
    this.foodTitle,
    this.foodRate,
    this.foodImage,
  });
  final String? foodTitle;
  final String? foodDescription;
  final String? foodRate;
  final String? foodImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      width: 124,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(foodTitle.toString()),
                    Text(foodDescription.toString()),
                    Text(foodRate.toString()),
                  ],
                ),
                height: 168,
                width: 102,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Positioned(
              top: -30,
              right: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(foodImage.toString()),
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
