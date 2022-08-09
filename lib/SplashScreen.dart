import 'package:flutter/material.dart';
import 'package:iot/Authentication/LoginPage.dart';
import 'package:iot/Values/Colors.dart';
import 'package:iot/Values/MyTextStyle.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetoIntroduction_Page();

  }
  _navigatetoIntroduction_Page()async{
    await Future.delayed(const Duration(milliseconds: 1500),(){});
    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Padding(
            padding: const EdgeInsets.only(right: 20,top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assest/Image/cloud_image.png',scale: 3.8,),
              ],
            ),
          ),

         Column(
           children: [
             Image.asset('assest/Iocns/home_logo.png',width: 200,height: 70,),
             Text('Home',style: MyTextStyle.railWayStyle48,),
           ],
         ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assest/Image/object_image.png',scale: 5,),
            ],
          ),

        ],
      ),
    );
  }
}
