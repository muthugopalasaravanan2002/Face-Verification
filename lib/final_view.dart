import 'package:flutter/material.dart';

import 'main.dart';
class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Face Verification'),
          leading: Icon(Icons.arrow_back_ios_new),
        ),
        body:Container(
          margin: EdgeInsets.only(top: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(child: Icon(Icons.person,size: 150,color: Colors.grey,),),
                Container(margin: EdgeInsets.only(top: 40),
                    child: Text('We Could not recognize your face',
                        style: TextStyle(fontWeight:FontWeight.bold))),
                Container(margin: EdgeInsets.only(top: 40),
                    child: Text("Don't worry,your request for Attendance has \n \t been sent to the Head foe approval!")),
                Container(margin: EdgeInsets.only(top: 40),
                    child: Text('Go to the Dashboard and continue with your tasks for the day \n\t Once your attendance is approved.',
                        style: TextStyle(fontSize: 10))),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.white,
          height: MediaQuery.of(context).size.height*0.17,
          child: Column(
            children: [
              Container(margin:EdgeInsets.only(bottom:5),
                  child: Divider(color: Colors.black)),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyApp()));
                      setState(() {});
                    },
                    child: const Text('Go to Dashboard',style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),)
    );
  }
}
