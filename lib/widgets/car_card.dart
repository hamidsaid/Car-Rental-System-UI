import 'package:car_rental/constants.dart';
import 'package:flutter/material.dart';

import '../screens/car_details.dart';

class CarCard extends StatelessWidget {
  final String imagePath;
  final String rentPrice;
  final String carName;
  final double top;

  CarCard({
    required this.imagePath,
    required this.rentPrice,
    required this.carName,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 130.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Positioned(
              top: top,
              left: 10,
              child: Container(
                width: device.width * 0.5,
                child: Image.asset(imagePath),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              child: Text(
                carName,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "BeVietnamPro",
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 20,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: kMainColor),
                  children: [
                    TextSpan(
                      text: "\$${rentPrice}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                    TextSpan(
                      text: "/day",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 6,
              bottom: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Material(
                  elevation: 10,
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CarDetails();
                      }));
                    },
                    minWidth: 120,
                    height: 13.0,
                    child: Row(
                      children: const [
                        Text(
                          "Details",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              fontFamily: "BeVietnamPro"),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
