import 'package:flutter/material.dart';
import 'package:iot/Authentication/ForgotPassword.dart';
import 'package:iot/Values/Colors.dart';
import 'package:iot/Values/MyTextStyle.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: height*0.03,),

                Image.asset('assest/Image/welcome_image1.png',scale: 4,),

                SizedBox(height: height*0.03,),

                Text('Email Verification',style: MyTextStyle.poppinsStyle20,),

                SizedBox(height: height*0.002,),

                Text('We will send you an OTP on this email',style: MyTextStyle.poppinsStyle15,),

                SizedBox(height: height*0.07,),

                Text('Enter Register Email-id',style: MyTextStyle.poppinsStyle157.copyWith(color: AppColors.grey),),

                SizedBox(height: height*0.02,),

                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: MyTextStyle.inputDec3.copyWith(
                    hintText: 'sumit@gamil.com',
                  ),
                ),

                SizedBox(height: height*0.22),

                Container(
                  width: width,
                  // height: 20,
                  padding: EdgeInsets.symmetric(vertical: 13),
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('Get Link',style: MyTextStyle.poppinsStyle16,)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
