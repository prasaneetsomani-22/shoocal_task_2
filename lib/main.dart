import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoocal_task_2/savepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> checkList = [];
  String dailogtext;
  String Name;
  String mobile_no;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black26,
     appBar: AppBar(
       title: Text("Shoocal Form"),
       backgroundColor: Colors.blueAccent,
       centerTitle: true,
     ),
     body:Padding(
       padding: EdgeInsets.all(20.0),
       child: ListView(
         children: <Widget>[
           Text("Form"),
           SizedBox(height: 30.0,),
           TextField(
             decoration: InputDecoration(
               filled: true,
               fillColor: Colors.white,
               hintText: "Enter your Name",
               hintStyle: TextStyle(
                 color: Colors.black38,
               )
             ),
             onChanged: (value){
               Name = value;
             },
           ),
           SizedBox(height: 10.0,),
           TextField(
             decoration: InputDecoration(
                 filled: true,
                 fillColor: Colors.white,
                 hintText: "Mobile no.",
                 hintStyle: TextStyle(
                   color: Colors.black38,
                 )
             ),
             onChanged: (value){
                mobile_no = value;
             },
           ),
           Column(
             children: checkList,
           ),
           FlatButton(
             color: Colors.pinkAccent,
             child: Text("Add",style: TextStyle(color:Colors.white),),
             onPressed: (){
                 showDialog(context: context,builder: (context){
                   return AlertDialog(
                     title: Text("Add CheckBox"),
                    content: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter the checkBox Title",
                        hintStyle: TextStyle(
                          color: Colors.black12,
                        ),
                      ),
                      onChanged: (value){
                        dailogtext = value;
                      },
                    ),
                     actions: <Widget>[
                       FlatButton(
                         child: Text("Add"),
                         color: Colors.blue,
                         onPressed: (){
                           Navigator.of(context).pop();
                            setState(() {
                              checkList.add(checkboxes(dailogtext,true));
                            });
                         },
                       )
                     ],
                   );
                 });
             },
           ),
           FlatButton(
             child: Text("Save"),
             color:Colors.deepOrange,
             onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder:(context)=>SavePage(Name,mobile_no,checkList)));
             },
           )
         ],
       ),
     )
   );
  }



}
class checkboxes extends StatelessWidget{

  final title;
  final value;
  checkboxes(this.title,this.value);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          Checkbox(
            value:value,
            activeColor: Colors.blue,

          ),
          SizedBox(width: 20.0),
          Text(title,style: TextStyle(color:Colors.white),)
        ],
      ),
    );
  }


}

