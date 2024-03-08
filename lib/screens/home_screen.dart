import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var height, width;

  List iconImages = [
    "assets/images/flight.png",
    "assets/images/dish.png",
    "assets/images/front-of-bus.png"
    // "assets/images/condo.png",
    // "assets/images/plate.png",
    // "assets/images/front-of-bus.png"
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                height: height * 0.07,
                width: width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore",
                          style: GoogleFonts.lexend(
                              fontSize: width * 0.059,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Text(
                          "Explore your world Beauty",
                          style: GoogleFonts.lexend(
                              fontSize: width * 0.037,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Container(
                        width: width * 0.15,
                        height: height * 0.053,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/lady.jpg"),
                                fit: BoxFit.cover)))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.073,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(13)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                          hintStyle: GoogleFonts.lexend(
                              color: Colors.grey, fontSize: width * 0.04),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black54,
                            size: width * 0.08,
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                height: height * 0.08,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: iconImages.length,
                  itemBuilder: ((context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: height * 0.067,
                          width: width * 0.14,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Center(
                            child: Image(
                              color: Colors.white,
                              height: height * 0.04,
                              image: AssetImage(iconImages[index]),
                            ),
                          ),
                        ),
                      ),
                  );
                }))
              )
            ],
          ),
        ),
      ),
    );
  }
}
