import 'package:flutter/material.dart';
import 'package:foodie/common/app_style.dart';
import 'package:foodie/common/reusable_text.dart';
import 'package:foodie/constants/constants.dart';

class AllFastestFood extends StatelessWidget {
  const AllFastestFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(text: 'Fastest Food', style: appStyle(13, kDark, FontWeight.w600),)
      ),
      body: const Center(
        child: Text('All Fastest Food'),
      ),
    );
  }
}
