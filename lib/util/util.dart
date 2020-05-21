import 'package:shared_preferences/shared_preferences.dart';

//shared_preferences setString
void saveString(String key,String value) async{
  var prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, value);
}
void  saveDouble(String key,double value) async{
  var prefs = await SharedPreferences.getInstance();
  await prefs.setDouble(key, value);
}
void saveInt(String key,int value) async{
  var prefs = await SharedPreferences.getInstance();
  await prefs.setInt(key, value);
}
void saveStringList(String key,List value) async{
  var prefs = await SharedPreferences.getInstance();
  await prefs.setStringList(key, value);
}
void saveBool(String key,bool value) async{
  var prefs = await SharedPreferences.getInstance();
  await prefs.setBool(key, value);
}

//shared_preferences get
Future<String> getString(String key) async {
  var prefs = await SharedPreferences.getInstance();
  var res = prefs.getString(key);
  return res;
}
Future <num> getDouble(String key) async {
  var prefs = await SharedPreferences.getInstance();
  var res = prefs.getDouble(key);
  return res;
}
Future <num> getInt(String key) async {
  var prefs = await SharedPreferences.getInstance();
  var res = prefs.getInt(key);
  return res;
}
Future <List> getStringList(String key) async {
  var prefs = await SharedPreferences.getInstance();
  var res = prefs.getStringList(key);
  return res;
}
Future <bool> getBool(String key) async {
  var prefs = await SharedPreferences.getInstance();
  var res = prefs.getBool(key);
  return res;
}

//shared_preferences clear //清空键值对
Future clearShared() async{
  var prefs = await SharedPreferences.getInstance();
  await prefs.clear();
}
//shared_preferences remove
Future removeShared(String key) async{
  var prefs = await SharedPreferences.getInstance();
  await prefs.remove(key);
}