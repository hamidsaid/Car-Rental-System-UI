import 'package:car_rental/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/car_specs.dart';
import '../widgets/rich_text.dart';

class CarDetails extends StatefulWidget {
  @override
  _CarDetailsState createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double>(begin: 200, end: 0).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        backgroundColor: kMainColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Transform.translate(
              offset: Offset(animation.value, 0),
              child: Image.asset('assets/images/porsche.png'),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kDarkColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichTextBuild(
                    text1: "Porsche 911 Convertible\n",
                    text2: "2021",
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CarSpecs(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      RichTextBuild(
                        text1: "\$150",
                        text2: "/day",
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                        child: Container(
                          height: device.height * 0.0995,
                          decoration: const BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Rent Now",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
