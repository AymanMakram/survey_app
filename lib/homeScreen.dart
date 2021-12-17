import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart' hide Image;


class HomeScreen extends StatefulWidget {
static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> excellentimages = [
    'assets/images/excellent/excellent_1.png',
    'assets/images/excellent/excellent_2.png',
    'assets/images/excellent/excellent_3.png',
    'assets/images/excellent/excellent_4.png',
    'assets/images/excellent/excellent_5.png',
  ];
  List<String> goodimages = [
    'assets/images/good/good_1.png',
    'assets/images/good/good_2.png',
    'assets/images/good/good_3.png',
    'assets/images/good/good_4.png',
    'assets/images/good/good_5.png',
  ];
  List<String> acceptableimages = [
    'assets/images/acceptable/acceptable_1.png',
    'assets/images/acceptable/acceptable_2.png',
    'assets/images/acceptable/acceptable_3.png',
    'assets/images/acceptable/acceptable_4.png',
    'assets/images/acceptable/acceptable_5.png',
  ];
  List<String> badimages = [
    'assets/images/bad/bad_1.png',
    'assets/images/bad/bad_2.png',
    'assets/images/bad/bad_3.png',
    'assets/images/bad/bad_4.png',
    'assets/images/bad/bad_5.png',
  ];
  List<String> verybadimages = [
    'assets/images/verybad/verybad_1.png',
    'assets/images/verybad/verybad_2.png',
    'assets/images/verybad/verybad_3.png',
    'assets/images/verybad/verybad_4.png',
    'assets/images/verybad/verybad_5.png',
  ];

  int index = 0;

  final list = indexrandomnumber(5, min: 0, max: 4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Container(
          color: Color.fromARGB(255, 219, 0, 73),
          child:
          TextButton(
            style: TextButton.styleFrom(
              textStyle: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 219, 0, 73),),
            ),
            onPressed: () {
              SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
            },
            child: Text(''),
          ),
        )),
      ),

      backgroundColor: Color.fromARGB(255, 219, 0, 73),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: InkWell(onTap: () {
                  if (index < 5 && index >= 0) {
                    index++;
                  }
                  if (index == 5) {
                    index = 0;
                  }
                  setState(() {

                  });
                  showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 5), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          content: Container(
                              width: 200,
                              height: 500,
                              child: Image.asset(
                                  excellentimages[list[index]])),
                        );
                      });
                }, child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                        'assets/images/excellent/excellent.png'))
                )),
                Expanded(child: InkWell(onTap: () {
                  if (index < 5 && index >= 0) {
                    index++;
                  }
                  if (index == 5) {
                    index = 0;
                  }
                  setState(() {

                  });
                  showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 5), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          content: Container(
                              width: 200,
                              height: 500,
                              child: Image.asset(goodimages[list[index]])),
                        );
                      });
                }, child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/images/good/good.png'))
                )),
                Expanded(child: InkWell(onTap: () {
                  /**if (connected == true) {
                      _printacceptableimages();
                      }**/
                  if (index < 5 && index >= 0) {
                    index++;
                  }
                  if (index == 5) {
                    index = 0;
                  }
                  setState(() {

                  });
                  showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 5), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          content: Container(
                              width: 200,
                              height: 500,
                              child: Image.asset(
                                  acceptableimages[list[index]])),
                        );
                      });
                }, child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                        'assets/images/acceptable/acceptable.png'))
                )),
                Expanded(child: InkWell(onTap: () {
                  if (index < 5 && index >= 0) {
                    index++;
                  }
                  if (index == 5) {
                    index = 0;
                  }
                  setState(() {

                  });
                  showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 5), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          content: Container(
                              width: 200,
                              height: 500,
                              child: Image.asset(badimages[list[index]])),
                        );
                      });
                }, child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/images/bad/bad.png'))
                )),
                Expanded(child: InkWell(onTap: () {
                  if (index < 5 && index >= 0) {
                    index++;
                  }
                  if (index == 5) {
                    index = 0;
                  }
                  setState(() {

                  });
                  showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 5), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          content: Container(
                              width: 200,
                              height: 500,
                              child: Image.asset(verybadimages[list[index]])),
                        );
                      });
                }, child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/images/verybad/verybad.png'))
                )),
              ],),
          ),
        ],
      ),

    );
  }
}
/////// functions random /////////////////////////////////////////////////////////////////////
  int nextnumber({final int min, final int max}) =>
      min + Random().nextInt(max - min + 1);

  List<int> indexrandomnumber(int length, {final int min, final int max}) {
    final numbers = Set<int>();
    while (numbers.length < length) {
      final number = nextnumber(min: min, max: max);
      numbers.add(number);
    }
    return List.of(numbers);
  }

