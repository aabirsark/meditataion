import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:meditation/consts.dart';
import 'package:meditation/ext.dart';
import 'package:meditation/views/home.page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInUp(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: context.responsive(250),
                width: context.responsive(250),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/medi.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: context.responsive(60),
                        width: context.responsive(60),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10))),
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset("assets/icon.png"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: context.responsive(30),
              ),
              Text(
                "For each day you Meditate\nMediTree donates the cost of\nplanting one tree to\nreforestation",
                style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: context.responsive(100),
              ),
              GestureDetector(
                onTap: () {
                  context.navigateTo(const HomePage());
                },
                child: Container(
                  height: 60,
                  width: context.responsive(250, axis: Axis.horizontal),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text("Get Started",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Iconsax.arrow_right,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  decoration: const ShapeDecoration(
                      shape: StadiumBorder(), color: primaryColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
