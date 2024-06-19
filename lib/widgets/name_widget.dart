import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venkatesh/constants/text_styles.dart';

class NameWidget extends StatefulWidget{
  final String name;
  final String summary;
  const NameWidget({super.key,required this.name,required this.summary});

  @override
  State<StatefulWidget> createState() {
   return _NameWidget();
  }

}

class _NameWidget extends State<NameWidget> with SingleTickerProviderStateMixin{

  late AnimationController nameTextController;
  late Animation<int> textAnimation;
  late Animation<List<String>> listAnimation;

  @override
  void initState() {
    setAnimationValue();
    super.initState();
  }

  setAnimationValue()async{
    nameTextController =  AnimationController(
      duration: const Duration(milliseconds: 6000),
      vsync: this,
    );

    textAnimation = StepTween(begin: 0, end: widget.name.length)
        .animate(CurvedAnimation(parent: nameTextController, curve: Curves.decelerate));

    await nameTextController.repeat();
  }


  @override
  void dispose() {
    nameTextController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
   return Column(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text("Hi, I am ",style: Styles.semiBoldTextStyle(),),
       SizedBox(height: 10.h,),
       AnimatedBuilder(
         animation: textAnimation,
         builder: (BuildContext context, Widget? child) {
           String text = widget.name.substring(0,textAnimation.value);
           return Text(text,style: Styles.headBlackTextStyle(fontSize: 24.r),);
         },
       ),
       SizedBox(height: 10.h,),
       Text(widget.summary,style: Styles.regularTextStyle(fontSize: 16.r),),
     ],
   );
  }

}