import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: CircleAvatar(backgroundImage: AssetImage(AppAssets().car1)),
        ),
        title: Row(
          children: [
            Icon(Icons.location_on, color: blackColor, size: 15.sp),
            Text(
              "Gulshan Block 5, Karachi",
              style: style12_400.copyWith(fontSize: 10.sp),
            ),
          ],
        ),

        ///
        ///. notification icon
        ///
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: greyColor, width: 2),
              ),
              child: Icon(
                Icons.notifications_none,
                color: blackColor,
                size: 30.sp,
              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            TextFormField(
              decoration: fieldDecoration.copyWith(
                hintText: "Search ",

                prefixIcon: Icon(Icons.search, size: 25.sp),

                suffixIcon: Icon(Icons.filter_alt, size: 25.sp),
              ),
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text('Near me', style: style20_600),
                Spacer(),
                Text(
                  'See All',
                  style: style12_400.copyWith(color: primaryColor),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [Container(child: Image.asset(AppAssets().hotel1))],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
