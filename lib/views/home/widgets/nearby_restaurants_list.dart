import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/constants/uidata.dart';
import 'package:foodie/views/home/widgets/restaurant_widget.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      padding: EdgeInsets.only(left: 20.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var restaurant = restaurants[i];
          return RestaurantWidget(image: restaurant['imageUrl'], logo: restaurant['logoUrl'], title: restaurant['title'], time: restaurant['time'], rating: restaurant['ratingCount']);
        }),
      ),
    );
  }
}
