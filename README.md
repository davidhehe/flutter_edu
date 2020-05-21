An absolute bare-bones web app.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

项目说明：
 1.兼容app端和web端；
 2.做的较粗糙，勿喷；
 
采坑记录:
  1. 网上博客多是关于早期flutter出的flutter_web 方面的，结果按照这路走，一定走偏了；
  因为flutter_web现在已经合并到flutter中了，不要再研究flutter_web了；
  2.web端路由跳转，由课程列表到课程详情传id的过程，采坑实录：用了 Navigator.pushNamed(context, '/list',arguments: course.id);
  还采用了Provider方法，结果 到了详情页，刷新页面，id就消失了，想用url 传参，也找不到方法；用dart:html  web端可用sessionStorage，app端又不兼容了，目前采用了 shared_preferences 方法，列表点击时，存id,到详情页时取id,详情页消毁时,clear存储；多端都可兼容。
  3.有更好的传参方式，给留言，万分感谢。

项目安装命令：
 1. flutter pub get
 2.flutter run (开启虚拟机、web调试自行百度)
 3.flutter build web 打包web
