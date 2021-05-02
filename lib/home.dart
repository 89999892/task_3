import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List  textlist= ['sky','Tower','road','Bridge','books','Mountain'];
  List photolist=['assets/images/down2.jpg', 'assets/images/down4.jpg',
    'assets/images/down5.jpg','assets/images/down6.jpg',
    'assets/images/edu.jpg','assets/images/down3.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                _customwidget(photolist[0],textlist[0]),
                _customwidget(photolist[1],textlist[1]),
              ],
            ),
            Row(
              children: [
                _customwidget(photolist[2],textlist[2]),
                _customwidget(photolist[3],textlist[3]),
              ],
            ),
            Row(
              children: [
                _customwidget(photolist[4],textlist[4]),
                _customwidget(photolist[5],textlist[5]),
              ],
            ),

          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(color: Colors.grey,
      width: double.infinity,
      height: 4,);
  }

  Widget _customwidget(String photo,String text ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
      child: Column(
        children: [
          Container(

            width: 150,
            height: 170,
            decoration: BoxDecoration(
                boxShadow:[BoxShadow(color:Colors.cyanAccent,
                    spreadRadius: 3,
                    blurRadius: 3
                ),] ,
                borderRadius:BorderRadius.circular(20),
                image: DecorationImage(image: ExactAssetImage(photo),fit: BoxFit.cover)),
          ),
          SizedBox(height: 5,),
          Container(child: Text(text,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),),
        ],
      ),
    );
  }
}