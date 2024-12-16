import 'package:flutter/material.dart';
import 'package:hotel_menu/components/custom_button.dart';
import 'package:hotel_menu/screens/thankyou_screen/thankyou_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            // ListTile(trailing: ,
            //   title: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [Text("food1"), Text("fshfsfh"), Text("rate")],
            //   ),
            //   leading: ClipRRect(
            //     borderRadius: BorderRadius.circular(15),
            //     child: Image.asset(
            //         fit: BoxFit.cover,
            //         width: 82,
            //         height: 82,
            //         "asset/images/free-photo-of-a-plate-of-food-with-carrots-and-onions-on-it.jpeg"),
            //   ),
            // ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(5),
                        height: 84,
                        width: double.infinity,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                  fit: BoxFit.cover,
                                  width: 82,
                                  height: 82,
                                  "asset/images/free-photo-of-a-plate-of-food-with-carrots-and-onions-on-it.jpeg"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("food1"),
                                Text("fshfsfh"),
                                Text("rate")
                              ],
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.close),
                                Row(
                                  children: [
                                    Container(
                                      child: Center(child: Icon(Icons.remove)),
                                      width: 30,
                                      height: 30,
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
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: Center(child: Icon(Icons.add)),
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          // color: Colors.blue,
                                          shape: BoxShape.circle,
                                          border: Border.all(width: 1)),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                itemCount: 2),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThankyouScreen(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(15)),
                height: 214,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.,
                        children: [
                          Text("sub total"),
                          Text("268"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.,
                        children: [
                          Text("discount"),
                          Text("0%"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.,
                        children: [
                          Text("total"),
                          Text("268"),
                        ],
                      ),
                    ),
                    Center(
                      child: CustomButton(
                        height: 57,
                        width: 248,
                        radius: 10,
                        title: "Place my order",
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
