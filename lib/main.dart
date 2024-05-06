import 'package:demo_presentation/scan_face.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Face Verification',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Face Verification'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Container(child: GestureDetector(
             onTap:
               () {
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => ScanFaceView()));
               },
               child: Icon(Icons.document_scanner,size: 150,color: Colors.grey,)),),
            Text('Initiate face verification for \n quick attendance Process'),
          ],
        ),
      ),
bottomNavigationBar: BottomAppBar(
  surfaceTintColor: Colors.white,
  height: MediaQuery.of(context).size.height*0.17,
  child: Column(
    children: [
      Container(child: Text('Privacy Notice',style: TextStyle(color: Colors.blue,fontSize:10),),),
      Container(margin:EdgeInsets.only(bottom:5),
          child: Divider(color: Colors.black)),
      Container(
        width: MediaQuery.of(context).size.width*0.9,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigo),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  )),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScanFaceView()));
              setState(() {});
            },
            child: const Text('Verify',style: TextStyle(color: Colors.white),)),
      ),
    ],
  ),)

    );
  }
}
