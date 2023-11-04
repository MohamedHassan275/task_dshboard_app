import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerHelper {
  static final Color _shimmerBase = Colors.grey.shade200;
  static  final Color _shimmerHighlighted = Colors.grey.shade300;

  buildBasicShimmer(
      {double height = double.infinity, double width = double.infinity}) {
    return Shimmer.fromColors(
      baseColor: _shimmerBase,
      highlightColor: _shimmerHighlighted,
      child: Container(
        color: Colors.white,
        height: height,
        width: width,
      ),
    );
  }

  buildAllUserShimmer(context,{scontroller, itemCount = 5,height = 200.0}) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        shrinkWrap: true,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
            child: Shimmer.fromColors(
              baseColor: _shimmerBase,
              highlightColor: _shimmerHighlighted,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0.r),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: height,
                  decoration:   BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x102c3e50),
                        offset: Offset(0, 0),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                ),
              ),),
          );
        });
  }

}