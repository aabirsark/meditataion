import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:meditation/consts.dart';
import 'package:meditation/ext.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
        child: Column(children: [
      Text(
        "Daily",
        style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
      ),
      SizedBox(
        height: context.responsive(10),
      ),
      const Text(
        "MindTree",
        style: TextStyle(
            fontSize: 30, color: Colors.black, fontWeight: FontWeight.w800),
      ),
      Expanded(
        child: Center(
            child: CarouselSlider.builder(
          options: CarouselOptions(
              height: context.responsive(370),
              enableInfiniteScroll: false,
              scrollPhysics: const BouncingScrollPhysics()),
          itemCount: image_urls.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  MediCard(imageUrl: image_urls[itemIndex], index: itemIndex),
        )),
      )
    ]));
  }
}

class MediCard extends StatelessWidget {
  const MediCard({
    Key? key,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);
  final String imageUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.responsive(350),
      width: context.responsive(250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 28.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "DAY ${index + 1}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(
                    Iconsax.heart,
                    color: Colors.white,
                  )
                ],
              ),
              const Spacer(),
              const Text(
                "7 minutes",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Your first meditation",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: context.responsive(30),
              backgroundColor: primaryColor,
              child: const Icon(
                Iconsax.play,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
