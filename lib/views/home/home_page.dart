import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/common/custom_appbar.dart';
import 'package:foodie/common/custom_container.dart';
import 'package:foodie/common/heading.dart';
import 'package:foodie/constants/constants.dart';
import 'package:foodie/views/home/all_fastest_food.dart';
import 'package:foodie/views/home/all_nearby_restaurants.dart';
import 'package:foodie/views/home/recommendations.dart';
import 'package:foodie/views/home/widgets/category_list.dart';
import 'package:foodie/views/home/widgets/food_list.dart';
import 'package:foodie/views/home/widgets/nearby_restaurants_list.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTertiary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: const CustomAppBar()),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                text: 'Nearby Restaurants',
                onTap: () {
                  Get.to(() => const AllNearbyRestaurants(),
                      transition: Transition.cupertino,
                      duration: const Duration(microseconds: 900));
                },
              ),
              const NearbyRestaurants(),
              Heading(
                text: 'Try Something New',
                onTap: () {
                  Get.to(() => const RecommendationsPage(),
                      transition: Transition.cupertino,
                      duration: const Duration(microseconds: 900));
                },
              ),
              const FoodList(),
              Heading(
                text: 'Food closer to you',
                onTap: () {
                  Get.to(() => const AllFastestFood(),
                      transition: Transition.cupertino,
                      duration: const Duration(microseconds: 900));
                },
              ),
              const FoodList()
            ],
          ),
        ),
      ),
    );
  }
}
