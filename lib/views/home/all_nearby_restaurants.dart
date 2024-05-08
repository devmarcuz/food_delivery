import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/common/back_ground_container.dart';
import 'package:foodie/constants/uidata.dart';
import 'package:foodie/views/home/widgets/restaurant_tile.dart';

import '../../common/app_style.dart';
import '../../common/reusable_text.dart';
import '../../constants/constants.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title:  ReusableText(text: 'Nearby Restaurants', style: appStyle(13, kGray, FontWeight.w600),)
      ),
      body: BackGroundContainer(color: Colors.white, child: Padding(
        padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 12.h),
        child: ListView(
          children: List.generate(restaurants.length, (i) {
            var restaurant = restaurants[i];
            return RestaurantTile(restaurant: restaurant);
          }),
        ),
      ), )
    );
  }
}
