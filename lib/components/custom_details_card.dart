import 'package:flutter/material.dart';
import 'package:hotel_menu/screens/food_details_screen/food_details_screen.dart';

class CustomDetailsCard extends StatelessWidget {
  const CustomDetailsCard({
    super.key,
    this.height,
    this.width,
    this.boxradius,
    this.topRight,
    this.topLeft,
    this.bottomLeft,
    this.bottomRight,
    this.image,
    this.headline,
    this.minutes,
    this.incrediance,
    this.rating,
    this.ratingCount,
  });
  final double? height;
  final double? width;
  final double? boxradius;
  final double? topRight;
  final double? topLeft;
  final double? bottomLeft;
  final double? bottomRight;
  final String? image;
  final String? headline;
  final String? minutes;
  final String? incrediance;
  final double? rating;
  final int? ratingCount;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          InkWell(
            // onTap: () => FoodDetailsScreen,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetailsScreen(),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(boxradius!),
              ),
              // height: 229,
              // width: 266,
              height: height, width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(topLeft!),
                        topRight: Radius.circular(topRight!)),
                    child: SizedBox(
                      height: 136,
                      width: double.infinity,
                      child:
                          Image.asset(scale: 5, fit: BoxFit.fitWidth, image!),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      headline!,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.black.withOpacity(.3),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          minutes!,
                          style: TextStyle(
                            color: Colors.black.withOpacity(.3),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            5,
                            (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey.withOpacity(.3)),
                                child: Text(
                                  incrediance ?? "".toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          Positioned(
              top: 10,
              left: 15,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Center(
                    child: Wrap(
                        // crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                rating.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                              ),
                              Text("(${ratingCount}+)",
                                  style: TextStyle(fontSize: 10))
                            ],
                          ),
                        ]),
                  ),
                ),
                height: 28,
                width: 79,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              ))
        ],
      ),
    );
  }
}
