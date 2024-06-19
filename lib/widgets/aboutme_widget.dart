import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venkatesh/constants/text_styles.dart';

class AboutMeWidget extends StatefulWidget{
  const AboutMeWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AboutMeState();
  }

}

class _AboutMeState extends State<AboutMeWidget> with SingleTickerProviderStateMixin{

  late AnimationController buildAnimationController;
  late Animation<int> textAnimation;
  String aboutMe = "Hello! My name is Venkatesh and i enjoy creating things that live on the internet. My interest in mobile and web application development started back in 2020 when i decided to try create awesome mobile and web application.";
  String interest = "My main focus to create awesome mobile and web application with design and powerfull application.";
  String buildWebsite = "I build ";

  @override
  void initState() {
    setAnimationValue();
    super.initState();
  }

  setAnimationValue()async{
    buildAnimationController =  AnimationController(
      duration: const Duration(milliseconds: 6000),
      vsync: this,
    );

    textAnimation = StepTween(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: buildAnimationController, curve: Curves.decelerate));

    await buildAnimationController.repeat();
  }


  @override
  void dispose() {
    buildAnimationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(aboutMe,style: Styles.semiBoldTextStyle(),),
        SizedBox(height: 10.h,),
        Text(interest,style: Styles.regularTextStyle(fontSize: 16.r),),
        SizedBox(height: 10.h,),
        Text(buildWebsite,style: Styles.regularTextStyle(fontSize: 16.r),),
      ],
    );
  }

}