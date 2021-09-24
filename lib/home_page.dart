import 'package:day2_salon_app/constants.dart';
import 'package:day2_salon_app/popular_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              height: screenHeight(context) * 0.3,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  kcDeepPurpleColor,
                  Colors.black,
                ]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                ),
                //color: kcDeepPurpleColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  verticalHeightSpacer,
                  Row(
                    children: [
                      const Text(
                        'Hello Daria',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                      ),
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/8/85/Selena_Gomez_-_Walmart_Soundcheck_Concert.jpg'),
                      ),
                    ],
                  ),
                  verticalHeightSpacer,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white24,
                    ),
                    alignment: Alignment.center,
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.white54),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white54,
                          ),
                          hintText: 'What are you looking for?'),
                    ),
                  ),
                ],
              ),
            ),
            verticalHeightSpacer,
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular in Mumbai',
                        style: TextStyle(fontSize: 20),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('More'),
                      ),
                    ],
                  ),
                  verticalHeightSpacer,
                  SizedBox(
                    height: screenHeight(context) * 0.27,
                    child: const PopularList(),
                  ),
                  // verticalHeightSpacer,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Top Services',
                        style: TextStyle(fontSize: 20),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('More'),
                      ),
                    ],
                  ),
                  verticalHeightSpacer,
                  SizedBox(
                    height: screenHeight(context) * 0.3,
                    child: const PopularList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
