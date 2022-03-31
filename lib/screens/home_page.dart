import 'package:car_rental/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/brands.dart';
import '../widgets/row_build.dart';
import '../widgets/search_bar.dart';
import '../widgets/car_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDarkColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        leading: SvgPicture.asset(
          "assets/logos/list.svg",
          height: 5.0,
          width: 5.0,
          fit: BoxFit.scaleDown,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgPicture.asset("assets/logos/profile.svg"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: device.height * 0.3,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
                color: kMainColor,
              ),
              child: Column(
                children: [
                  RowBuild(title: "Pick Up", date: "March 10", time: "09:00am"),
                  const SearchBar(hint: "Search for a city or a place"),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Checkbox(
                          shape: const CircleBorder(),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked
                                  ? isChecked == false
                                  : isChecked == true;
                            });
                          }),
                      const Text(
                        "Drop off at same location",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: "BeVietnamPro",
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  RowBuild(
                      title: "Drop off", date: "March 12", time: "09:00am"),
                  const SearchBar(hint: "Search for a city or a place"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Material(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30.0),
                      child: MaterialButton(
                        onPressed: () {},
                        minWidth: 200,
                        height: 15.0,
                        child: const Text(
                          "Show Offers",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontFamily: "BeVietnamPro"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 30),
              child: Text(
                "Brands",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "BeVietnamPro",
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Brands(
                  backgroundColor: Colors.white,
                  image: "assets/logos/bmw_logo.png",
                ),
                const Brands(
                  backgroundColor: kMainColor,
                  image: "assets/logos/mercedes_logo.png",
                ),
                const Brands(
                  backgroundColor: Colors.white,
                  image: "assets/logos/porsche_logo.png",
                ),
                Container(
                  height: 65,
                  width: 65,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Text(
                    "All",
                    style: TextStyle(fontSize: 16, fontFamily: "BeVietnamPro"),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 30),
              child: Text(
                "Most liked",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "BeVietnamPro",
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            CarCard(
              imagePath: "assets/images/mercedes.png",
              rentPrice: "140",
              carName: "Mercedes Benz S550",
              top: -10,
            ),
            CarCard(
              imagePath: "assets/images/cadillac.png",
              rentPrice: "135",
              carName: "Cadillac Escalade",
              top: -40.0,
            )
          ],
        ),
      ),
    );
  }
}
