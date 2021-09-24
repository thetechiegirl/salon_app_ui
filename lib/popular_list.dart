import 'package:day2_salon_app/constants.dart';
import 'package:day2_salon_app/salon_info_screen.dart';
import 'package:flutter/material.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imagePath = [
      'https://images.squarespace-cdn.com/content/v1/60bf6b7a69e2014bd9a42a95/1623363493381-HP5YCJIV29MH7MPTGU7J/Blushes+Oxford-28.jpg',
      'https://i.pinimg.com/originals/1f/2f/32/1f2f3228eec5b82eecb5ca094bba002f.jpg',
      'https://hips.hearstapps.com/ell.h-cdn.co/assets/cm/15/02/54aae2ef89216_-_elle-nevada-las-vegas-color-salon-by-michael-boychuck-xln.jpg',
    ];

    List<String> salonName = [
      'Cute Cut Salon',
      'L\'Oréal Hair Salon',
      'Daily Place'
    ];
    List<String> rating = ['4.4/5', '4.3/5', '3.5/5'];
    List<String> distance = ['1.6 km away ', '2.0 km away', '4.0 km away'];
    return ListView.builder(
      itemCount: imagePath.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: GestureDetector(
          onTap: () {
            //print(salonName[i]);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SalonInfoScreen(
                    salonName: salonName[i],
                    imagePath: imagePath[i],
                    distance: distance[i],
                    rating: rating[i]),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screenHeight(context) * 0.16,
                width: screenWidth(context) * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imagePath[i]),
                  ),
                ),
              ),
              verticalHeightSpacer,
              Text(
                salonName[i],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                distance[i],
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.blue.shade400,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    rating[i],
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
