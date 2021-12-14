import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_usb_printer/flutter_usb_printer.dart';
import 'dart:typed_data';

class HomeScreen extends StatefulWidget {
static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> devices = [];
  FlutterUsbPrinter flutterUsbPrinter = FlutterUsbPrinter();
  bool connected = false;

  @override
  initState() {
    super.initState();
    _getDevicelist();
  }

  _getDevicelist() async {
    List<Map<String, dynamic>> results = [];
    results = await FlutterUsbPrinter.getUSBDeviceList();

    print(" length: ${results.length}");
    setState(() {
      devices = results;
    });
  }

  _connect(int vendorId, int productId) async {
    bool returned ;
    try {
      returned = await flutterUsbPrinter.connect(vendorId, productId);
    } on PlatformException {
      //response = 'Failed to get platform version.';
    }
    if (returned) {
      setState(() {
        connected = true;
      });
    }
  }

  _printexcellentimages() async {
    try {
      ByteData bytes = await rootBundle.load(excellentimages[list[index]]);
      var data =
      Uint8List.sublistView(
          bytes);
      await flutterUsbPrinter.write(data);
      // await FlutterUsbPrinter.printRawData("text");
      // await FlutterUsbPrinter.printText("Testing ESC POS printer...");
    } on PlatformException {
      //response = 'Failed to get platform version.';
    }
  }
  _printgoodimages() async {
    try {
      ByteData bytes = await rootBundle.load(goodimages[list[index]]);
      var data =
      Uint8List.sublistView(
          bytes);
      await flutterUsbPrinter.write(data);
      // await FlutterUsbPrinter.printRawData("text");
      // await FlutterUsbPrinter.printText("Testing ESC POS printer...");
    } on PlatformException {
      //response = 'Failed to get platform version.';
    }
  }
  _printacceptableimages() async {
    try {
      ByteData bytes = await rootBundle.load(acceptableimages[list[index]]);
      var data =
      Uint8List.sublistView(
          bytes);
      await flutterUsbPrinter.write(data);
      // await FlutterUsbPrinter.printRawData("text");
      // await FlutterUsbPrinter.printText("Testing ESC POS printer...");
    } on PlatformException {
      //response = 'Failed to get platform version.';
    }
  }
  _printbadimages() async {
    try {
      ByteData bytes = await rootBundle.load(badimages[list[index]]);
      var data =
      Uint8List.sublistView(
          bytes);
      await flutterUsbPrinter.write(data);
      // await FlutterUsbPrinter.printRawData("text");
      // await FlutterUsbPrinter.printText("Testing ESC POS printer...");
    } on PlatformException {
      //response = 'Failed to get platform version.';
    }
  }
  _printverybadimages() async {
    try {
      ByteData bytes = await rootBundle.load(verybadimages[list[index]]);
      var data =
      Uint8List.sublistView(
          bytes);
      await flutterUsbPrinter.write(data);
      // await FlutterUsbPrinter.printRawData("text");
      // await FlutterUsbPrinter.printText("Testing ESC POS printer...");
    } on PlatformException {
      //response = 'Failed to get platform version.';
    }
  }
  List<Widget> _buildList(List<Map<String, dynamic>> devices) {
    return devices
        .map((device) => new ListTile(
      onTap: () {
        _connect(int.parse(device['vendorId']),
            int.parse(device['productId']));
      },
      leading: new Icon(Icons.usb),
      title: new Text(
          device['manufacturer'] + " " + device['productName']),
      subtitle:
      new Text(device['vendorId'] + " " + device['productId']),
    ))
        .toList();
  }
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

int index = 0 ;

final list = indexrandomnumber(5,min:0,max:4);

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
            textStyle: TextStyle(fontSize: 20,color: Color.fromARGB(255, 219, 0, 73),),
          ),
          onPressed: (){SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);},
          child: Text(''),
        ),
          /**ElevatedButton(
            onPressed: (){

              SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
        }, child: Text(''))**/

        )),
      ),

        backgroundColor: Color.fromARGB(255, 219, 0, 73),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
              Expanded(child: InkWell(onTap:(){
                _getDevicelist();
                if(connected == true){
                _printexcellentimages();
                }
                if(index<5 && index >= 0){
                  index++;
                }
                if(index == 5 ){
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
                        content:Container(
                            width:200,
                            height: 500,
                            child: Image.asset(excellentimages[list[index]])) ,
                      );
                    });
              },child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset('assets/images/excellent/excellent.png'))
              )),
                Expanded(child: InkWell(onTap:(){
                  _getDevicelist();
                  if(connected == true){
                    _printgoodimages();
                  }
                  if(index<5 && index >= 0){
                    index++;
                  }
                  if(index == 5 ){
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
                          content:Container(
                              width:200,
                              height: 500,
                              child: Image.asset(goodimages[list[index]])) ,
                        );
                      });
                },child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/images/good/good.png'))
                )),
                Expanded(child: InkWell(onTap:(){
                  _getDevicelist();
                  if(connected == true){
                    _printacceptableimages();
                  }
                  if(index<5 && index >= 0){
                    index++;
                  }
                  if(index == 5 ){
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
                          content:Container(
                              width:200,
                              height: 500,
                              child: Image.asset(acceptableimages[list[index]])) ,
                        );
                      });
                },child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/images/acceptable/acceptable.png'))
                )),
                Expanded(child: InkWell(onTap:(){
                  _getDevicelist();
                  if(connected == true){
                    _printbadimages();
                  }
                  if(index<5 && index >= 0){
                    index++;
                  }
                  if(index == 5 ){
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
                          content:Container(
                              width:200,
                              height: 500,
                              child: Image.asset(badimages[list[index]])) ,
                        );
                      });
                },child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/images/bad/bad.png'))
                )),
                Expanded(child: InkWell (onTap:(){
                  _getDevicelist();
                  if(connected == true){
                    _printverybadimages();
                  }
                  if(index<5 && index >= 0){
                    index++;
                  }
                  if(index == 5 ){
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
                          content:Container(
                              width:200,
                              height: 500,
                              child: Image.asset(verybadimages[list[index]])) ,
                        );
                      });
                },child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/images/verybad/verybad.png'))
                )),
            ],),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: devices.length > 0
                ? new ListView(
              scrollDirection: Axis.vertical,
              children: _buildList(devices),
            )
                : null,),
          )
        ],
      ),

    );
  }
}
int nextnumber({final int min,final int max})=>
    min+Random().nextInt(max-min+1);

List<int> indexrandomnumber(int length,{final int min,final int max}){

  final numbers = Set<int>();
  while(numbers.length<length){
    final number =nextnumber(min:min,max:max);
    numbers.add(number);
  }
  return List.of(numbers);
}
