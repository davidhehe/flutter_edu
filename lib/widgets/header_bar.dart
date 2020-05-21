import 'package:flutter/material.dart';
// import 'package:flutter_web_ui/ui.dart';


class headerBar extends StatefulWidget {
  final screenW;
  headerBar({Key key,this.screenW}) : super(key: key);

  @override
  _headerBarState createState() => _headerBarState();
}

class _headerBarState extends State<headerBar> {
  //已登录 文字
  Widget logined = Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      InkWell(
        onTap: (){},
        child: Text('讲师招募 | ',style:topFontStyle),
      ),
      InkWell(
        onTap: (){},
        child: Text('讲师中心 | ',style:topFontStyle),
      ),
      InkWell(
        onTap: (){},
        child: Text('我的订单 | ',style:topFontStyle),
      ),
      InkWell(
        onTap: (){},
        child: Text('1380000000 | ',style:topFontStyle),
      ),
      InkWell(
        onTap: (){},
        child: Text('退出',style:topFontStyle),
      ),
    ],
  );
  // 未登录
  Widget unLogined = Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      InkWell(
        onTap: (){},
        child: Text('登录 | ',style:topFontStyle),
      ),
      InkWell(
        onTap: (){},
        child: Text('退出',style:topFontStyle),
      ),
    ]
  );
 
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var loginState = true;
    Widget content;
    if(loginState){
      content = logined;
    }else{
      content = unLogined;
    }
    // print(MediaQuery.of(context).size); 
    var screenW = MediaQuery.of(context).size.width; //屏幕宽度
    
    
    return Container(
      color:Colors.black,
      height: 30.0,
      padding: EdgeInsets.only(right:screenW>500?50:10,),
      child: content,
    );
  }
}

final TextStyle topFontStyle = TextStyle(          
  fontFamily: 'Raleway',
  color: Colors.grey,
  fontSize: 12.0,
); 