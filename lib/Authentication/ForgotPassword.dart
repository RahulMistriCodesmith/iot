import 'package:flutter/material.dart';
import 'package:iot/Authentication/LoginPage.dart';
import 'package:iot/Authentication/EmailVerification.dart';
import 'package:iot/Values/Colors.dart';
import 'package:iot/Values/MyTextStyle.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  bool _isObscure = false;
  bool _isObscure1 = false;

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

                Text('Forget Password',style: MyTextStyle.poppinsStyle32,),

                SizedBox(height: height*0.03,),

                Image.asset('assest/Image/welcome_image.png',scale: 4,),

                SizedBox(height: height*0.03),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Email',style: MyTextStyle.poppinsStyle14,),
                  ],
                ),

                SizedBox(height: height*0.01,),

                TextFormField(
                  decoration: MyTextStyle.inputDec3.copyWith(
                    hintText: 'sumit@gamil.com',
                  ),
                ),

                SizedBox(height: height*0.03),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Password',style: MyTextStyle.poppinsStyle14,),
                  ],
                ),

                SizedBox(height: height*0.01,),

                TextFormField(
                  decoration: MyTextStyle.inputDec3.copyWith(
                    hintText: '********',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,color: AppColors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),

                SizedBox(height: height*0.03,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Password',style: MyTextStyle.poppinsStyle14,),
                  ],
                ),

                SizedBox(height: height*0.01,),

                TextFormField(
                  decoration: MyTextStyle.inputDec3.copyWith(
                    hintText: '********',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,color: AppColors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure1 = !_isObscure1;
                        });
                      },
                    ),
                  ),
                ),

                SizedBox(height: height*0.065),

                GestureDetector(
                  
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EmailVerification()));
                  },
                  
                  child: Container(
                    width: width,
                    // height: 20,
                    padding: EdgeInsets.symmetric(vertical: 13),
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text('Submit',style: MyTextStyle.poppinsStyle16,)),
                  ),
                ),

                SizedBox(height: height*0.03),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an acount?',style: MyTextStyle.poppinsStyle15,),

                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text('Sign in!',style: MyTextStyle.poppinsStyle157,),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
