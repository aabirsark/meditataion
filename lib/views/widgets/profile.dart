import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:meditation/consts.dart';
import 'package:meditation/ext.dart';
import 'package:meditation/views/widgets/chart.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: FadeInUp(
        child: Column(children: [
          SizedBox(
            height: context.responsive(10),
          ),
          Text(
            "Aabir's",
            style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
          ),
          SizedBox(
            height: context.responsive(5),
          ),
          const Text(
            "growth",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: context.responsive(20),
          ),
          const Divider(),
          SizedBox(
            height: context.responsive(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Info(
                label: "Days",
                count: "18",
              ),
              Info(
                label: "Streaks",
                count: "6",
              ),
              Info(
                label: "Trees",
                count: "2",
              ),
            ],
          ),
          SizedBox(
            height: context.responsive(30),
          ),
          Container(
            // height: 250,
            padding: const EdgeInsets.only(bottom: 16.0),
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)),
            child: const AspectRatio(aspectRatio: 1.7, child: Chart()),
          ),
          SizedBox(
            height: context.responsive(20),
          ),
          const Divider(),
          SizedBox(
            height: context.responsive(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.4,
                width: MediaQuery.of(context).size.width * 0.4,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/icon.png",
                      height: 70,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "4 days left",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                )),
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.4,
                width: MediaQuery.of(context).size.width * 0.4,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primaryColor,
                ),
                child: const Center(
                  child: Text(
                    "Unlock\nmore growth",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.count,
    required this.label,
  }) : super(key: key);

  final String count;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
