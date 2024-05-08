import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/common/app_style.dart';
import 'package:foodie/common/back_ground_container.dart';
import 'package:foodie/common/reusable_text.dart';
import 'package:foodie/constants/constants.dart';
import 'package:foodie/views/categories/category_page.dart';
import 'package:foodie/views/categories/widgets/category_tile.dart';
import 'package:get/get.dart';
import '../../constants/uidata.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: kOffWhite,
          title: ReusableText(
            text: 'All Categories',
            style: appStyle(12, kGray, FontWeight.normal),
          )),
      body: BackGroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(categories.length, (i) {
              var category = categories[i];
              return CategoryTile(category: category);
            }),
          ),
        ),
      ),
    );
  }
}
