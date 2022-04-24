import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:meditation/consts.dart';
import 'package:meditation/ext.dart';
import 'package:meditation/views/widgets/home.dart';
import 'package:meditation/views/widgets/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Iconsax.clock)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Iconsax.moon))],
      ),
      bottomNavigationBar: FadeInUp(
        delay: const Duration(milliseconds: 500),
        duration: const Duration(milliseconds: 800),
        child: Container(
          height: context.responsive(65),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Iconsax.home,
                  color: index == 0 ? primaryColor : Colors.grey,
                ),
                onPressed: () {
                  if (index == 1) {
                    setState(() {
                      index = 0;
                    });
                  }
                },
              ),
              const Icon(
                Iconsax.headphone,
                color: Colors.grey,
              ),
              IconButton(
                icon: Icon(
                  Iconsax.activity,
                  color: index == 1 ? primaryColor : Colors.grey,
                ),
                onPressed: () {
                  if (index == 0) {
                    setState(() {
                      index = 1;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
      body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: index == 0 ? const Home() : const Profile()),
    );
  }
}
