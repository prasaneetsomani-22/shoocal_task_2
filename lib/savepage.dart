import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavePage extends StatelessWidget{
  final String name;
  final String mobile_no;
  final List<Widget> checklist;
  TextEditingController _textEditingController = TextEditingController();
  SavePage(this.name,this.mobile_no,this.checklist);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body:  ListView(
        children: <Widget>[
          SizedBox(height: 30.0,),
          Center(child: Text("Saved Information",style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),)),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Name: $name",style: TextStyle(color:Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Mobile No.: $mobile_no",style: TextStyle(color:Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: checklist,
            ),
          )
        ],
      ),
    );
  }


}