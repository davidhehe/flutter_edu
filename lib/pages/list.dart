import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import '../util/util.dart' show getInt,removeShared;
// import 'package:provider/provider.dart';
// import '../provide/detail_id.dart';

class listPage extends StatefulWidget {
  listPage({Key key}) : super(key: key);
  
  @override
  _listPageState createState() => _listPageState();
}

class _listPageState extends State<listPage>{
  @override
  void initState(){
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    removeShared('courseId');
  }
  @override
  Widget build(BuildContext context) {
    // print('${Provider.of<Id>(context,listen: false).d}ggggggggg');
    // var arg = ModalRoute.of(context).settings.arguments;
    // window.sessionStorage.putIfAbsent('id', () => arg.toString());
    
    // var screenW = MediaQuery.of(context).size.width;
    int id;
    Future getDatas()async{
      int courseId = await getInt('courseId');
      id = courseId;
      print(courseId);
      //todo 用id去请求接口
      //
      //以下是模拟数据
      return courseId;
    }
    return Scaffold(
      appBar: !kIsWeb?AppBar(title: Text('课程详情'),):null,
      body: FutureBuilder(
        future: getDatas(),
        builder: (BuildContext context,AsyncSnapshot snapShot){
          if(snapShot.connectionState == ConnectionState.waiting){
            return Text('Loading...');
          }else {
            return ListView(
              shrinkWrap: false,
              children:[
                Text('课程id为$id')
              ]
            );
          }
        },
      )
    );
  }
}