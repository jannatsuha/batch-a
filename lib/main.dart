import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String btnText1="Button One";
Color btnColor1=Colors.purpleAccent;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Suha",style: TextStyle(color: Colors.white),),
      ),
      body:
     SingleChildScrollView(
       child: Center(
         child: Column(
           children: [
             RaisedButton(
                 color: btnColor1,
                 child: Text(btnText1,style: TextStyle(color: Colors.white),),
                 onPressed: (){
                   setState(() {
                     btnColor1=Colors.greenAccent;
                     btnText1="Button Pressed";
                   });
                 }),
             Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg"),
             Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg"),
             Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg"),
             Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")

           ],
         ),
       ),
     )
    );
  }
}
