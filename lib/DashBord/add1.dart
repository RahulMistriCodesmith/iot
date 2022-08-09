import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iot/DashBord/BNBP.dart';
import 'package:iot/Values/Colors.dart';
import 'package:iot/Values/MyTextStyle.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class AddDevice1 extends StatefulWidget {
  const AddDevice1({Key? key}) : super(key: key);

  @override
  State<AddDevice1> createState() => _AddDevice1State();
}

class _AddDevice1State extends State<AddDevice1> {

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
          title: Text('Add Device',style: MyTextStyle.poppinsStyle16,),

        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              TextFormField(
                decoration: MyTextStyle.inputDec1.copyWith(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search,color: Colors.white,),
                ),
              ),

              SizedBox(height: height*0.05,),
              
              Text('Select Device icon',style: MyTextStyle.poppinsStyle16,),

              Container(
                width: width,
                height: height,
                child: GridView.builder(
                    itemCount: coinList.length,
                    itemBuilder: (BuildContext context , index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [

                                Container(
                                 width: width*0.28,
                                  height: height*0.11,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:AppColors.brown
                                  ),
                                  child: Center(
                                    child: Image.asset(coinList[index]['image'],scale: 8,),
                                  ),
                                ),
                                

                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                ),
                ),
              ),

            ],
          ),
        ),
      )
    );
  }

  List coinList = [
    {
      'image': 'assest/Image/light_image.png',
    },{
      'image': 'assest/Image/AC_image.png',
    },{
      'image': 'assest/Iocns/home_icon.png',
    },{
      'image': 'assest/Iocns/pc_icon.png',
    },{
      'image': 'assest/Iocns/dot_icon.png',
    },{
      'image': 'assest/Iocns/swimming_icon.png',
    },{
      'image': 'assest/Iocns/lamp_image.png',
    },{
      'image': 'assest/Iocns/icon _trees.png',
    },{
      'image': 'assest/Iocns/icon _shower.png',
    },{
      'image': 'assest/Iocns/garbage_icon.png',
    },{
      'image': 'assest/Iocns/dumbale_icon.png',
    },{
      'image': 'assest/Iocns/bathTub_icon.png',
    },{
      'image': 'assest/Iocns/stave_icon.png',
    },{
      'image': 'assest/Iocns/office_icon.png',
    },{
      'image': 'assest/Iocns/ball_icon.png',
    },
  ];

}
