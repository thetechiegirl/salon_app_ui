import 'package:day2_salon_app/constants.dart';
import 'package:flutter/material.dart';

class SalonInfoScreen extends StatefulWidget {
  const SalonInfoScreen(
      {Key? key,
      required this.salonName,
      required this.imagePath,
      required this.distance,
      required this.rating})
      : super(key: key);
  final String salonName;
  final String imagePath;
  final String distance;
  final String rating;
  @override
  _SalonInfoScreenState createState() => _SalonInfoScreenState();
}

class _SalonInfoScreenState extends State<SalonInfoScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              fit: StackFit.passthrough,
              alignment: Alignment.center,
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
//                    color: kcDeepPurpleColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      verticalHeightSpacer,
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      verticalHeightSpacer,
                    ],
                  ),
                ),
                Positioned(
                    top: screenHeight(context) * 0.18,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: screenHeight(context) * 0.25,
                          width: screenWidth(context) * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            image: DecorationImage(
                              image: NetworkImage(widget.imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.salonName,
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Andheri, Mumbai   ' + widget.distance,
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontWeight: FontWeight.w200,
                                    ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.rating,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      fontWeight: FontWeight.w200,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.call_outlined,
                            color: kcDeepPurpleColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalHeightSpacer,
                  SizedBox(
                    height: screenHeight(context) * 0.05,
                    width: screenWidth(context) * 0.9,
                    child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.shade800,
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      labelPadding: const EdgeInsets.all(5),
                      tabs: const [
                        Tab(
                          text: 'Details',
                        ),
                        Tab(
                          text: 'Services',
                        ),
                        Tab(
                          text: 'Reviews',
                        ),
                        Tab(
                          text: 'Portfolio',
                        ),
                      ],
                      controller: _tabController,
                    ),
                  ),
                  verticalHeightSpacer,
                  SizedBox(
                    height: 200,
                    child: TabBarView(
                      children: [
                        const Text('Details data'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Top Services ',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            verticalHeightSpacer,
                            Container(
                              height: screenHeight(context) * 0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Special Package',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                        Text(
                                          'Hair Cut with spa',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                color: Colors.grey,
                                              ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Text(
                                      '\$ 12',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: kcDeepPurpleColor,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const Text('Reviews data '),
                        const Text('Portfolio Data '),
                      ],
                      controller: _tabController,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
