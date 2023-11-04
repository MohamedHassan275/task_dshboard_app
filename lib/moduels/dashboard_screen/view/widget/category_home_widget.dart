
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_dshboard_app/app/widget/shimmer.dart';
import 'package:task_dshboard_app/moduels/dashboard_screen/data/home_cubit/home_cubit.dart';

import '../../../../app/app_manger/color_manger.dart';
import 'all_user_widget.dart';

class CategoryHomeWidget extends StatefulWidget {
  const CategoryHomeWidget({Key? key}) : super(key: key);

  @override
  State<CategoryHomeWidget> createState() => _CategoryHomeWidgetState();
}

class _CategoryHomeWidgetState extends State<CategoryHomeWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomeCubit.get(context).userModel == null ?
    HomeCubit.get(context).userContentService() : null;

  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context, state) {
        HomeCubit homeCubit = HomeCubit.get(context);
        if(state is UserContentSuccessfullyState){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories View',
                        style: TextStyle(color: AppColors.colorBlack,fontSize: 14.sp)),
                    Text('see all',
                        style: TextStyle(color: AppColors.colorGreyHome2,fontSize: 12.sp,
                          decoration: TextDecoration.underline,
                        )),
                  ],
                ),
                SizedBox(height: 10.h,),
                /// widget category item widget
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: homeCubit.userModel?.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return AllUserContentWidget(userList: homeCubit.userModel![index],);
                  },),

              ],
            ),
          );
        }else {
         return ShimmerHelper().buildAllUserShimmer(context,height: 50.h,itemCount: 5);
        }
      },
    );
  }



}
