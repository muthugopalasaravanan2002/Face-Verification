import 'package:demo_presentation/unsuccessful_view.dart';
import 'package:flutter/material.dart';
class SubmitView extends StatefulWidget {
  const SubmitView({super.key});

  @override
  State<SubmitView> createState() => _SubmitViewState();
}

class _SubmitViewState extends State<SubmitView> {
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
            Container(
              child: Icon(
                Icons.person,size: 150,
                color: Colors.grey)),
            Container(
                margin: EdgeInsets.only(top: 40),
                child: Text('Face Verified Successfully',style: TextStyle(fontWeight:FontWeight.bold),)),
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
                          builder: (context) => UnsuccessFulView()));
                  setState(() {});
                },
                child: const Text('Submit',style: TextStyle(color: Colors.white),)),
          ),
        ],
      ),)
    );

  }
}
