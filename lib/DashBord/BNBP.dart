import 'package:flutter/material.dart';
import 'package:iot/DashBord/HomePage.dart';
import 'package:iot/DashBord/add.dart';
import 'package:iot/Values/Colors.dart';
import 'package:iot/Values/MyTextStyle.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class BNBP extends StatefulWidget {
  const BNBP({Key? key}) : super(key: key);

  @override
  State<BNBP> createState() => _BNBPState();
}

class _BNBPState extends State<BNBP> {


  int currentIndex = 0;
  bool isSwitch = true;
  bool isSwitch1 = false;
  bool isSwitch2 = true;
  bool isSwitch3 = false;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Stack(
        children: [

          Column(
            children: [

              SizedBox(height: height*0.05,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [

                    Image.asset('assest/Image/profile_image.png',scale: 3.5,),

                    SizedBox(width: width*0.04,),

                    Expanded(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Canal Jems',style: MyTextStyle.poppinsStyle20,),
                          Text('Tooday 17 June, 2022 ',style: MyTextStyle.poppinsStyle10,),
                        ],
                      ),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.brown,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: const Offset(
                                0.9,
                                4.0,
                              ),
                              blurRadius: 10,
                              spreadRadius: 0.2
                          ),
                        ],
                      ),
                      child: Image.asset('assest/Iocns/bell_icon.png',scale: 3,),
                    ),

                  ],
                ),
              ),

              SizedBox(height: height*0.025,),

              SizedBox(
                height: height-180,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [

                          Container(
                            padding: EdgeInsets.only(left: 40,right: 40,top: 30,bottom: 20),
                            margin: EdgeInsets.only(top: 185,left: 50,right: 50),
                            decoration: BoxDecoration(
                                color: AppColors.backGroundColor,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: AppColors.borderColors.withOpacity(0.11))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text('Temperature',style: MyTextStyle.poppinsStyle10,),
                                    SizedBox(height: height*0.003,),
                                    Text('32°C',style: MyTextStyle.poppinsStyle20,),

                                  ],
                                ),

                                Container(
                                  width: 1,
                                  height: 35,
                                  color: AppColors.blue.withOpacity(0.2),),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text('Humidity',style: MyTextStyle.poppinsStyle10,),
                                    SizedBox(height: height*0.003,),
                                    Text('50°C',style: MyTextStyle.poppinsStyle20,),

                                  ],
                                ),


                              ],
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 50),
                            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            decoration: BoxDecoration(
                              color: AppColors.brown,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: '20°/',
                                        style: MyTextStyle.poppinsStyle36,
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: ' 10°',
                                              style: MyTextStyle.poppinsStyle24
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text('Tooday Cloudy, Surat, India',style: MyTextStyle.poppinsStyle10,),

                                  ],
                                ),

                                Image.asset('assest/Image/sun_behind_cloud.png',scale: 5,),

                              ],
                            ),
                          ),

                          Positioned(
                            left: 50,
                            child: Container(
                              width: width*0.4,
                              height: height*0.06,
                              // padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                              // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              decoration: BoxDecoration(
                                color: AppColors.backGroundColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(child: Text('Device',style: MyTextStyle.poppinsStyle20,)),

                            ),
                          ),

                          Positioned(
                            left: 190,
                            right: 0,
                            top: 0,
                            bottom: 265,
                            child: Container(
                              width: width*0.4,
                              // height: height*0.06,
                              // padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                              // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(child: Text('Groups',style: MyTextStyle.poppinsStyle14,)),

                            ),
                          ),



                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Home Device',style: MyTextStyle.railWayStyle16,),
                            Text('See All',style: MyTextStyle.poppinsStyle10,),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            InkWell(

                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDevice()));
                              },

                              child: Container(
                                width: width*0.45,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.brown,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Air Conditioner',style: MyTextStyle.poppinsStyle10,),

                                        SizedBox(width: width*0.06,),

                                        Switch(
                                          value: isSwitch,
                                          onChanged: (value){
                                            setState(() {
                                              isSwitch = value;
                                            });
                                          },
                                          activeTrackColor: Colors.white,
                                          inactiveTrackColor: AppColors.backGroundColor,
                                          activeColor: AppColors.blue,
                                          inactiveThumbColor: AppColors.brown,
                                        ),


                                      ],
                                    ),

                                    SizedBox(height: height*0.02,),

                                    Image.asset('assest/Iocns/AC_image.png',scale: 5,),

                                    SizedBox(height: height*0.02,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Image.asset('assest/Iocns/low_Brithness_icon.png',scale: 4,),

                                        Container(
                                          width: width*0.31,
                                          child: SfSlider(
                                            min: 0.0,
                                            max: 50.0,
                                            value: 20,
                                            inactiveColor: Colors.white,
                                            activeColor: AppColors.blue,
                                            thumbIcon: Container(
                                              decoration: BoxDecoration(
                                                  color: AppColors.blue,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: Colors.white
                                                  )
                                              ),
                                            ),
                                            showTicks: false,
                                            showLabels: false,
                                            enableTooltip: false,
                                            minorTicksPerInterval: 1,
                                            onChanged: (dynamic value){},
                                          ),
                                        ),


                                        Image.asset('assest/Iocns/high_Brithness_icon.png',scale: 4,),

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(10),
                              width: width*0.45,

                              decoration: BoxDecoration(
                                color: AppColors.brown,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Bedroom Light',style: MyTextStyle.poppinsStyle10,),

                                      SizedBox(width: width*0.06,),

                                      Switch(
                                        value: isSwitch1,
                                        onChanged: (value){
                                          setState(() {
                                            isSwitch1 = value;
                                          });
                                        },
                                        activeTrackColor: Colors.white,
                                        inactiveTrackColor: AppColors.backGroundColor,
                                        activeColor: AppColors.blue,
                                        inactiveThumbColor: AppColors.brown,
                                      ),


                                    ],
                                  ),

                                  SizedBox(height: height*0.02,),

                                  Image.asset('assest/Image/light_image.png',scale: 5,),

                                  SizedBox(height: height*0.02,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Image.asset('assest/Iocns/low_Brithness_icon.png',scale: 4,),

                                      Container(
                                        width: width*0.31,
                                        child: SfSlider(
                                          min: 0.0,
                                          max: 50.0,
                                          value: 20,
                                          inactiveColor: Colors.white,
                                          activeColor: AppColors.blue,
                                          thumbIcon: Container(
                                            decoration: BoxDecoration(
                                                color: AppColors.blue,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.white
                                                )
                                            ),
                                          ),
                                          showTicks: false,
                                          showLabels: false,
                                          enableTooltip: false,
                                          minorTicksPerInterval: 1,
                                          onChanged: (dynamic value){},
                                        ),
                                      ),


                                      Image.asset('assest/Iocns/high_Brithness_icon.png',scale: 4,),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Garden Device',style: MyTextStyle.railWayStyle16,),
                            Text('See All',style: MyTextStyle.poppinsStyle10,),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              width: width*0.45,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.brown,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Shower Swich',style: MyTextStyle.poppinsStyle10,),

                                      SizedBox(width: width*0.06,),

                                      Switch(
                                        value: isSwitch2,
                                        onChanged: (value){
                                          setState(() {
                                            isSwitch2 = value;
                                          });
                                        },
                                        activeTrackColor: Colors.white,
                                        inactiveTrackColor: AppColors.backGroundColor,
                                        activeColor: AppColors.blue,
                                        inactiveThumbColor: AppColors.brown,
                                      ),


                                    ],
                                  ),

                                  SizedBox(height: height*0.02,),

                                  Image.asset('assest/Iocns/icon _shower.png',scale: 5,),

                                  SizedBox(height: height*0.02,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Image.asset('assest/Iocns/low_Brithness_icon.png',scale: 4,),

                                      Container(
                                        width: width*0.31,
                                        child: SfSlider(
                                          min: 0.0,
                                          max: 50.0,
                                          value: 20,
                                          inactiveColor: Colors.white,
                                          activeColor: AppColors.blue,
                                          thumbIcon: Container(
                                            decoration: BoxDecoration(
                                                color: AppColors.blue,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.white
                                                )
                                            ),
                                          ),
                                          showTicks: false,
                                          showLabels: false,
                                          enableTooltip: false,
                                          minorTicksPerInterval: 1,
                                          onChanged: (dynamic value){},
                                        ),
                                      ),


                                      Image.asset('assest/Iocns/high_Brithness_icon.png',scale: 4,),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(10),
                              width: width*0.45,
                              decoration: BoxDecoration(
                                color: AppColors.brown,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Garden Lamp',style: MyTextStyle.poppinsStyle10,),

                                      SizedBox(width: width*0.06,),

                                      Switch(
                                        value: isSwitch3,
                                        onChanged: (value){
                                          setState(() {
                                            isSwitch3 = value;
                                          });
                                        },
                                        activeTrackColor: Colors.white,
                                        inactiveTrackColor: AppColors.backGroundColor,
                                        activeColor: AppColors.blue,
                                        inactiveThumbColor: AppColors.brown,
                                      ),


                                    ],
                                  ),

                                  SizedBox(height: height*0.02,),

                                  Image.asset('assest/Iocns/lamp_image.png',scale: 5,),

                                  SizedBox(height: height*0.02,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Image.asset('assest/Iocns/low_Brithness_icon.png',scale: 4,),

                                      Container(
                                        width: width*0.31,
                                        child: SfSlider(
                                          min: 0.0,
                                          max: 50.0,
                                          value: 20,
                                          inactiveColor: Colors.white,
                                          activeColor: AppColors.blue,
                                          thumbIcon: Container(
                                            decoration: BoxDecoration(
                                                color: AppColors.blue,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.white
                                                )
                                            ),
                                          ),
                                          showTicks: false,
                                          showLabels: false,
                                          enableTooltip: false,
                                          minorTicksPerInterval: 1,
                                          onChanged: (dynamic value){},
                                        ),
                                      ),


                                      Image.asset('assest/Iocns/high_Brithness_icon.png',scale: 4,),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),

          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 60,
              child: Stack(
                clipBehavior: Clip.none, children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                        backgroundColor: AppColors.blue,
                        child: Icon(Icons.add),
                        elevation: 0.1,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddDevice()));
                        }),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: ImageIcon(
                            AssetImage('assest/Iocns/home_icon.png'),
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                        ),

                        Container(
                          width: size.width * 0.20,
                        ),

                        IconButton(
                            icon: ImageIcon(
                              AssetImage('assest/Iocns/filter_icon.png'),
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setBottomBarIndex(2);
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}


class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = AppColors.blue
      ..style = PaintingStyle.fill;

    Path path = Path();
    // path.moveTo(0, 5); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
