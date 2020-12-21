import 'package:flutter/material.dart';
import 'scan.dart';
import 'generate.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR CODE"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           
            flatButton("Scan Qr Code", Scan()),
            SizedBox(height: 10.0,),
            flatButton("Generate Qr Code", Generate()),
          ],
        ),
      ),
    );
  }
  Widget flatButton(String text, Widget widget)
  {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      child: Text(text),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>widget));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),side: BorderSide(color: Colors.blue, width: 3.0),
      ),
    );
  }
}