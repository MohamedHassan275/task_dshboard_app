
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_dshboard_app/app/app_manger/color_manger.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget({Key? key}) : super(key: key);

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {

  List<String> sliderListItem = [
    'assets/images/png_image/slider_home_image2.png',
    'assets/images/png_image/slider_home_image2.png',
    'assets/images/png_image/slider_home_image2.png',
    'assets/images/png_image/slider_home_image2.png',
    'assets/images/png_image/slider_home_image2.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            height: 152.h,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(2.r),
            // ),
            child:  CarouselSlider(
                items: sliderListItem.map((e) =>
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: InkWell(
                          onTap: () {
                            // customFlutterToast(LocaleKeys.noInternetConnection.tr());
                          },
                          child: Image.asset(e),)
                    ))
                    .toList(),
                options: CarouselOptions(
                  height: 179.h,
                  aspectRatio: 1.0,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  viewportFraction: 1.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                ))),
        DotsIndicator(
          dotsCount: sliderListItem.length,
          position: currentIndex,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            color: AppColors.colorSliderUnActive,
            activeColor: AppColors.colorRed,
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        )

      ],
    );
  }
}
