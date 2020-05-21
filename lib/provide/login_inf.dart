import 'package:flutter/material.dart';

//个人信息及登录信息 
class User with ChangeNotifier {
    String token;
    String refreshToken;
    String userName;
    Map authorities; //地址列表

    String avatarSrc;
    int belongOrgId;
    String belongOrgName;
    int deptId;
    String deptName;
    String duty;
    int gender;
    int id;
    String job;
    String loginName;
    String name;
    String phone;
    List positions;
    int serviceType;
    int userType;
    
    //登录
    void changeLogin(String token,String refreshToken, String username, Map authorities){
      this.token = token;
      this.refreshToken = refreshToken;
      this.userName = username;
      this.authorities = authorities;
      notifyListeners();
    }
    //获取用户信息
    void changeGet(avatarSrc,belongOrgId,belongOrgName,deptId,deptName,duty,
      gender,id,job,loginName,name,phone,positions,serviceType,userType
    ){
      this.avatarSrc = avatarSrc;
      this.belongOrgId = belongOrgId;
      this.belongOrgName = belongOrgName;
      this.deptId = deptId;
      this.deptName = deptName;
      this.duty = duty;
      this.gender = gender;
      this.id = id;
      this.job = job;
      this.loginName = loginName;
      this.name = name;
      this.phone = phone;
      this.positions = positions;
      this.serviceType = serviceType;
      this.userType = userType;
    }
    //个人中心更改
    //....

}