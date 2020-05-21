import 'package:flutter/material.dart';
class headerNav extends StatefulWidget {
  final screenW;
  headerNav({Key key,@required this.screenW}) : super(key: key);
  @override
  _headerNavState createState() => _headerNavState();
}

class _headerNavState extends State<headerNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      height:widget.screenW>750?110:50,
      child: Align(
        child:Container(
          color: Colors.pink,
          height:widget.screenW>750?110:50,
          width:widget.screenW>1200?1200:widget.screenW,
          padding: EdgeInsets.only(left:widget.screenW>1200?0:10,right:widget.screenW>1200?0:10),
          child: Row(
            children: <Widget>[
              Image.asset('images/logo.png',height: widget.screenW>750?52.0:20,),
              SizedBox(width:widget.screenW>1200?100:widget.screenW>750?80:20),
              InkWell(
                onTap: (){},
                child: Text('首页',style: TextStyle(fontSize: 16.0,color: Colors.black),),
              ),
              SizedBox(width:50),
              InkWell(
                onTap: (){},
                child: Text('课程中心',style: TextStyle(fontSize: 16.0,color: Colors.black),),
              ),
            ],
          ),
        ),
      )
    );
  }
}