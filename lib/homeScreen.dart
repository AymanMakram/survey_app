import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
static const String routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color.fromARGB(255, 219, 0, 73),
      body: Center(child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Expanded(child: InkWell(onTap:(){
          showDialog(
              context: context,
              builder: (context) {
                Future.delayed(Duration(seconds: 5), () {
                  Navigator.of(context).pop(true);
                });
                return AlertDialog(
                  content:Container(
                      width:200,
                      height: 500,
                      child: Image.asset('assets/images/excellent/excellent_1.jpg')) ,
                );
              });
        },child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset('assets/images/excellent/excellent.png'))
        )),
          Expanded(child: InkWell(onTap:(){
            showDialog(
                context: context,
                builder: (context) {
                  Future.delayed(Duration(seconds: 5), () {
                    Navigator.of(context).pop(true);
                  });
                  return AlertDialog(
                    content:Container(
                        width:200,
                        height: 500,
                        child: Image.asset('assets/images/good/good_1.jpg')) ,
                  );
                });
          },child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset('assets/images/good/good.png'))
          )),
          Expanded(child: InkWell(onTap:(){
            showDialog(
                context: context,
                builder: (context) {
                  Future.delayed(Duration(seconds: 5), () {
                    Navigator.of(context).pop(true);
                  });
                  return AlertDialog(
                    content:Container(
                        width:200,
                        height: 500,
                        child: Image.asset('assets/images/acceptable/acceptable_1.jpg')) ,
                  );
                });
          },child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset('assets/images/acceptable/acceptable.png'))
          )),
          Expanded(child: InkWell(onTap:(){
            showDialog(
                context: context,
                builder: (context) {
                  Future.delayed(Duration(seconds: 5), () {
                    Navigator.of(context).pop(true);
                  });
                  return AlertDialog(
                    content:Container(
                        width:200,
                        height: 500,
                        child: Image.asset('assets/images/bad/bad_1.jpg')) ,
                  );
                });
          },child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset('assets/images/bad/bad.png'))
          )),
          Expanded(child: InkWell(onTap:(){
            showDialog(
                context: context,
                builder: (context) {
                  Future.delayed(Duration(seconds: 5), () {
                    Navigator.of(context).pop(true);
                  });
                  return AlertDialog(
                    content:Container(
                        width:200,
                        height: 500,
                        child: Image.asset('assets/images/verybad/verybad_1.jpg')) ,
                  );
                });
          },child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset('assets/images/verybad/verybad.png'))
          )),
      ],)),
    );
  }
}
