import 'package:demo_presentation/final_view.dart';
import 'package:flutter/material.dart';
class UnsuccessFulView extends StatefulWidget {
  const UnsuccessFulView({super.key});

  @override
  State<UnsuccessFulView> createState() => _UnsuccessFulViewState();
}

class _UnsuccessFulViewState extends State<UnsuccessFulView> {
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
                Center(child: Container(
                    width:MediaQuery.of(context).size.height*0.2,
                    height:MediaQuery.of(context).size.height*0.08,
                    margin: EdgeInsets.only(top: 40),
                    decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        border: Border.all(color: Colors.deepPurple)),
                    child: Row(
                      children: [
                        Container(margin: EdgeInsets.only(top: 5,left: 20),
                            child: Icon(Icons.refresh)),
                        Container(
                            margin: EdgeInsets.only(top: 5,left: 10),
                            child: Text('Re-Take',style: TextStyle(color: Colors.deepPurple,),)),
                      ],
                    ))),
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
                      backgroundColor: MaterialStateProperty.all(Colors.white30),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardView()));
                      setState(() {});
                    },
                    child: const Text('Submit',style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),)
    );
  }
}
