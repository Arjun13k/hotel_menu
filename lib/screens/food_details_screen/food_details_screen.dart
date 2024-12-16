import 'package:flutter/material.dart';
import 'package:hotel_menu/components/custom_button.dart';
import 'package:hotel_menu/screens/cart_screen/cart_screen.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 206,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image.asset(
                        scale: 5,
                        fit: BoxFit.fill,
                        "asset/images/free-photo-of-a-plate-of-food-with-carrots-and-onions-on-it.jpeg"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "food 1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 17,
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text("(30+)", style: TextStyle(fontSize: 12)),
                  Text("see review")
                ],
              ),
            ),
            Row(
              children: [
                Text("price"),
                Spacer(),
                Container(
                  child: Center(child: Icon(Icons.remove)),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "02",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Center(child: Icon(Icons.add)),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                  "datajnsdjdndnldsdndsldndlsdsnsdnsnsddddddddddddldsslnsdpc;dspcndccdpcspspscnsnpsincsncncpcdspcscdscnpscspcncspa"),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Text(
                  "Choice to add on",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTile(
                    title: Text("food11"),
                    leading: Image.asset(
                        width: 50,
                        height: 50,
                        fit: BoxFit.contain,
                        "asset/images/free-photo-of-a-plate-of-food-with-carrots-and-onions-on-it.jpeg"),
                    trailing: SizedBox(
                      width: 70,
                      child: Row(
                        children: [
                          Text("rate"),
                          Radio(
                              value: "food",
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              })
                        ],
                      ),
                    ),
                  ),
                  itemCount: 3,
                )
                //  Row(
                //   children: [
                //     Text("food1"),
                //     Spacer(),
                //     Text("Rate"),
                //     Radio(
                //         value: value, groupValue: groupValue, onChanged: onChanged)
                //   ],
                // ),
                ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              child: CustomButton(
                title: "Add to cart",
                radius: 30,
                width: 167,
                height: 53,
                radiusCircle: 20,
                childWidget: Icon(Icons.lock),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
