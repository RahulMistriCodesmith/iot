import 'package:flutter/material.dart';
import 'package:iot/DashBord/BNBP.dart';
import 'package:iot/DashBord/add1.dart';
import 'package:iot/Values/Colors.dart';
import 'package:iot/Values/MyTextStyle.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class AddDevice extends StatefulWidget {
  const AddDevice({Key? key}) : super(key: key);

  @override
  State<AddDevice> createState() => _AddDeviceState();
}

class _AddDeviceState extends State<AddDevice> {

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
                    crossAxisAlignment: CrossAxisAlignment.center,
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

                      SizedBox(height: height*0.17,),

                      Image.asset('assest/Iocns/meet_icon.png',scale: 5,),

                      SizedBox(height: height*0.02,),

                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Sapien enim et nisl gravida.',
                        style: MyTextStyle.poppinsStyle10,textAlign: TextAlign.center,),

                      SizedBox(height: height*0.04,),

                      GestureDetector(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddDevice1()));
                        },

                        child: Container(
                          width: width*0.4,
                          height: height*0.05,
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('ADD Device',style: MyTextStyle.poppinsStyle16,)),
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