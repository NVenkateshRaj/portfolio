import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venkatesh/constants/colors.dart';
import 'package:venkatesh/constants/text_styles.dart';

class WebAppBarWidget extends StatelessWidget  implements PreferredSizeWidget{
  const WebAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: kBlack,
    title: Padding(
      padding:  EdgeInsets.only(left: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Text("V",style: Styles.headBlackTextStyle(fontSize: 20.r),)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _headerWidget("Hello",(){}),
                _headerWidget("About",(){}),
                _headerWidget("Experience",(){}),
                _headerWidget("Projects",(){}),
              ],
            ),
          )
        ],
      ),
    ),
  );
  }

  _headerWidget(String text,Function onPressed){
    return Container(
      padding: EdgeInsets.only(left: 10.w,right: 10.w),
      child: InkWell(
        onTap: (){
          onPressed();
        },
        child: Text(text,style: Styles.semiBoldTextStyle(fontSize: 18.r),),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}