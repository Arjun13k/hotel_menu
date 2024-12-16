import 'package:flutter/material.dart';
import 'package:hotel_menu/components/custom_appbar.dart';
import 'package:hotel_menu/components/custom_card.dart';
import 'package:hotel_menu/components/custom_details_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      endDrawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff004422), Color(0xFFD9FFEC)],
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Special Offer",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "For Today",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 27,
                              width: 81,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 16),
                    //   child: SvgPicture.asset(
                    //     "asset/images/Group.svg",
                    //     height: 100,
                    //     width: 100,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.mic),
                    hintText: "Search for food",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                // height: 340,
                child: Column(
                  children: [
                    // Expanded(
                    //   child: ListView.separated(
                    //       shrinkWrap: true,
                    //       scrollDirection: Axis.horizontal,
                    //       itemBuilder: (context, index) => CustomFoodCategories(),
                    //       separatorBuilder: (context, index) => SizedBox(
                    //             width: 10,
                    //           ),
                    //       itemCount: 10),
                    // ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          10,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => ProcessingScreen(),
                                //     ));
                              },
                              child: customCard(
                                radiusCircle: 25,
                                radius: 100,
                                height: 98,
                                width: 59,
                                title: "hello",
                                image: AssetImage(
                                    "asset/images/free-photo-of-a-plate-of-food-with-carrots-and-onions-on-it.jpeg"),
                                // image: Image.asset("")),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // CarouselSlider(
                      //     items: List.generate(
                      //       5,
                      //       (index) => CustomFoodScrolling(),
                      //     ),
                      //     options: CarouselOptions(
                      //         // autoPlay: true,
                      //         // enlargeCenterPage: true,
                      //         // height: 200,
                      //         )),
                      // CustomFoodScrolling()
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Best Offer",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Text("See all"),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 10,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: CustomDetailsCard(
                        rating: 5,
                        ratingCount: 10,
                        height: 229,
                        width: 266,
                        headline: "food1",
                        minutes: "10-15",
                        topLeft: 15,
                        topRight: 15,
                        boxradius: 15,
                        incrediance: "items",
                        image:
                            "asset/images/free-photo-of-a-plate-of-food-with-carrots-and-onions-on-it.jpeg",
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
