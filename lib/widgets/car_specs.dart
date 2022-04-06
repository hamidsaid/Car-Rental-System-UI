import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarSpecs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SpecsCard(
          image: "assets/logos/engine.png",
          spec: 304,
          specDetail: "km/h",
        ),
        SpecsCard(
          image: "assets/logos/speedometre.png",
          spec: 379,
          specDetail: "power",
        ),
        SpecsCard(
          image: "assets/logos/seat.png",
          spec: 4,
          specDetail: "seats",
        ),
      ],
    );
  }
}

class SpecsCard extends StatelessWidget {
  final String image;
  final int spec;
  final String specDetail;

  SpecsCard({
    required this.image,
    required this.spec,
    required this.specDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "${spec}\n",
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: specDetail,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
