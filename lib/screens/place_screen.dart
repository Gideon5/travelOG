import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: height * 0.57,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/lady.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: height * 0.1,
                        width: width * 0.9,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: height * 0.051,
                                width: width * 0.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.green,
                                    size: width * 0.05,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: height * 0.051,
                              width: width * 0.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Center(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.green,
                                  size: width * 0.06,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: height * 0.23,
                        width: width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Seoul ",
                              style: GoogleFonts.lexend(
                                  fontSize: width * 0.043,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Text(
                              "Guyang Scenery",
                              style: GoogleFonts.lexend(
                                  fontSize: width * 0.043,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: width * 0.03,
                                ),
                                Icon(
                                  Icons.location_on,
                                  color: const Color.fromARGB(255, 35, 241, 42),
                                ),
                                Text(
                                  "Seoul",
                                  style: GoogleFonts.lexend(
                                      fontSize: width * 0.038,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              unratedColor: Colors.white,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: const Color.fromARGB(255, 35, 241, 42),
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                          size: width * 0.08,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Expanded(
                  child: SizedBox(
                width: width * 0.9,
                child: Text(
                  """Lorem ipsum is placeholder text commonly used in the graphic,
                     print, and publishing industries for previewing layouts and
                      visual mockups """,
                  style: GoogleFonts.lexend(
                      fontSize: width * 0.038,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                  textAlign: TextAlign.right,
                ),
              )),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.05,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/clock.png",
                      height: height * 0.032,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: width * 0.12,
                    ),
                    Text(
                      "8AM - 9PM",
                      style: GoogleFonts.lexend(
                          fontSize: width * 0.038,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.0001,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/calendar.png",
                      height: height * 0.032,
                    ),
                    SizedBox(
                      width: width * 0.12,
                    ),
                    Text(
                      "Friday - Tuesday",
                      style: GoogleFonts.lexend(
                          fontSize: width * 0.038,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/flight.png",
                      color: Colors.green,
                      height: height * 0.032,
                    ),
                    SizedBox(
                      width: width * 0.12,
                    ),
                    Text(
                      "Ticket 2 Way",
                      style: GoogleFonts.lexend(
                          fontSize: width * 0.038,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: height * 0.15,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height * 0.07,
                      width: width * 0.33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.green)),
                      child: Center(
                        child: Text(
                          "\$ 990.00",
                          style: GoogleFonts.lexend(
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w700,
                              color: Colors.green),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Book",
                            style: GoogleFonts.lexend(
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Image.asset(
                            "assets/images/send.png",
                            height: height * 0.03,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
