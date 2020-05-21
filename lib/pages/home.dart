import 'package:flutter/foundation.dart';// 判断是否是web平台
import 'package:flutter/material.dart';
import '../widgets/header_bar.dart';
import '../widgets/header_nav.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:provider/provider.dart';
// import '../provide/detail_id.dart';
import '../util/util.dart' show saveInt;

class homePage extends StatefulWidget {
  homePage({Key key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  //轮播
  Widget _banner(screenW){
    const swiperDataList = [
      'images/1.png',
      // 'images/logo.png',
    ];
    return Container(
      height: screenW>750?350:200,
      child:Swiper(
        itemCount: swiperDataList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('${swiperDataList[index]}'),
                fit:BoxFit.cover
              )
            ),
          );
        },
        pagination: SwiperPagination(),
        // control: SwiperControl(),
        // pagination: SwiperPagination(
        //   builder:DotSwiperPaginationBuilder(
        //     color: Colors.grey,
        //     activeColor: Colors.black12,
        //     size: 10,
        //     activeSize: 3
        //   )
        // ),
        autoplay: false,
        autoplayDisableOnInteraction: true, //用户拖拽时停止轮播
      )
    );
  }
  List<Course> courses = <Course>[
    Course(
      img: 'images/1.png',
      price: 100,
      title: '1111',
      isFree: false,
      id:111,
    ),
    Course(
      img: 'images/1.png',
      price: 0,
      title: '2222',
      isFree: true,
      id:222
    ),
    Course(
      img: 'images/1.png',
      price: 100,
      title: '333',
      isFree: false,
      id:333
    ),
    Course(
      img: 'images/1.png',
      price: 100,
      title: '444',
      isFree: false,
      id:444
    ),
  ];

  //分类课程 title && 查看更多
  Widget _typeTitle(double screenW,String name){
    return Container(
      margin: EdgeInsets.only(top:screenW>1200?50:20,bottom:screenW>1200?20:10),
      padding: EdgeInsets.only(left:screenW<1200?10:0,right:screenW<1200?10:0),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                text:'|',
                style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 16.0),
                children: [
                  TextSpan(
                    text:'   $name',
                  )
                ]
              ),
            )
          ),
          InkWell(
            onTap:null,
            child: Text('更多课程 >')
          ),
        ],
      ),
    );
  }
  //列表
  Widget _list(screenW,List<Course> courseList ){
    return Container(
      child:GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap:true, 
        crossAxisCount: screenW>1000?4:screenW>750?2:1,
        childAspectRatio: 1,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: courseList.map<Widget>((Course course){
          return Card(
            child: InkWell(
              onTap:(){
                // Navigator.pushNamed(context, '/list',arguments: course.id);
                Navigator.pushNamed(context, '/list');
                saveInt('courseId',course.id);
              },
              child:Text(course.title)
            ),
          );
        }).toList(),
      )
    );
  }

  //热门课程
  Widget _hotCourse(screenW){
    return Container(
      color: Colors.grey,
      child: Align(
        child: Container(
          width:screenW>1200?1200:screenW,
          color: Colors.yellow,
          child: Column(
            children:[
              _typeTitle(screenW,'热门课程'),
              _list(screenW,courses),
            ]
          ),
        ),
      ),
    );
    // return Stack(
    //   children: [
    //     Container(
    //       color: Colors.grey,
    //     ),
    //     Center(
    //       child:Container(
    //         width:screenW>1200?1200:screenW,
    //         child: Column(
    //           children: [
    //             Container(
    //               margin: EdgeInsets.only(top:screenW>1200?50:20,bottom:screenW>1200?20:10),
    //               padding: EdgeInsets.only(left:screenW<1200?10:0,right:screenW<1200?10:0),
    //               child: Row(
    //                 children: [
    //                   Expanded(
    //                     child: RichText(
    //                      text: TextSpan(
    //                        text:'|',
    //                        style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 16.0),
    //                        children: [
    //                          TextSpan(
    //                             text:'   热门课程',
    //                          )
    //                        ]
    //                      ),
    //                     )
    //                   ),
    //                   Text('更多课程 >')
    //                 ],
    //               ),
    //             ),
    //             //列表
    //             Container(
    //               child:GridView.count(
    //                 shrinkWrap:true, 
    //                 crossAxisCount: screenW>1000?4:screenW>750?2:1,
    //                 childAspectRatio: 1,
    //                 mainAxisSpacing: 5,
    //                 crossAxisSpacing: 5,
    //                 children: courses.map<Widget>((Course course){
    //                   return Card(
    //                     child: InkWell(
    //                       onTap:(){
    //                         // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //                         //   return listPage(id: course.id);
    //                         // },settings: RouteSettings(name:'list',arguments: 444),maintainState:true,fullscreenDialog:false));  
    //                         // Navigator.pushNamed(context, '/list',arguments: course.id);
    //                         Navigator.pushNamed(context, '/list');
    //                         // Provider.of<Id>(context, listen: false).idChange(course.id);
    //                         // print('${Provider.of<Id>(context,listen: false).d}rrrrrrrrr');
    //                         saveInt('courseId',course.id);

    //                       },
    //                       child:Text(course.title)
    //                     ),
    //                   );
    //                 }).toList(),
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],

    // );
  }
  //精品课程
  Widget _bestCourse(screenW){
    return Container(
      color: Colors.blue,
      child: Align(
        child: Container(
          width:screenW>1200?1200:screenW,
          color: Colors.pink,
          child: Column(
            children:[
              _typeTitle(screenW,'精品课程'),
              _list(screenW,courses),
            ]
          ),
        ),
      ),
    );    
  } 

    
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: !kIsWeb?AppBar(title: Text('首页'),):null,
      body: ListView(
        children:<Widget>[
          headerBar(screenW:screenW), //
          headerNav(screenW:screenW),
          _banner(screenW),
          _hotCourse(screenW),
          _bestCourse(screenW),
        ]
      ),
    );
  }
}

//课程类
class Course {
  Course({
    this.img,
    this.price,
    this.isFree,
    this.title,
    this.id
  });
  final String img;
  final int price;
  final bool isFree;
  final String title;
  final int id;

}