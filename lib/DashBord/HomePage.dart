import 'package:flutter/material.dart';
import 'package:iot/Values/Colors.dart';
import 'package:iot/Values/MyTextStyle.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomeDevice extends StatefulWidget {
  const HomeDevice({Key? key}) : super(key: key);

  @override
  State<HomeDevice> createState() => _HomeDeviceState();
}

class _HomeDeviceState extends State<HomeDevice> {

  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backGroundColor,
        elevation: 0,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Home Device',style: MyTextStyle.poppinsStyle16,),
            Text('6 Devices',style: MyTextStyle.poppinsStyle10,),
          ],
        ),

      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 6,
          itemBuilder: (BuildContext context,index){
       return Container(
         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.brown,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.backGroundColor),
          ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [

             Image.asset('assest/Image/AC_image.png',scale: 4.5,),

             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Air Conditioner',style: MyTextStyle.poppinsStyle10,),

                     SizedBox(width: width*0.25,),

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

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Image.asset('assest/Iocns/low_Brithness_icon.png',scale: 4,),

                     Container(
                       width: width*0.48,
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

           ],
         ),
        );
      }),
    );
  }
}
