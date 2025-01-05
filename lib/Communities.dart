import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

import '../Models/User.dart';
class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  //code to call get API using htttp https://jsonplaceholder.typicode.com/users
  List<User?> users=[];
  getUsersData() async{
    var response=await http.get(Uri.https('jsonplaceholder.typicode.com','users'));
    print(response.body);
    print(response.body.runtimeType);
    users =[];
    dynamic decodedString = jsonDecode(response.body);
    decodedString.forEach((element){
      users.add(User.fromJson(element));
    });
    // print(users);
    /*print(users[0]?.company?.name);
    print(decodedString[0]['company']['name']);
    print(users[0]?.address?.geo?.lat);
    print(decodedString[0]['address']['geo']['lat']);*/
  }


  @override
  void initState() {
    super.initState();
    getUsersData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount:users.length,
          itemBuilder:(context,index){
            return Container(
              margin:EdgeInsets.all(10),
              decoration:BoxDecoration(
                border:Border.all(
                  color:Colors.white70,
                  width:2,
                ),
                borderRadius:BorderRadius.circular(10),
              ),
              child:Column(
                children:[
                  Text(users[index]?.name??""),
                  Text(users[index]?.email??""),
                  Text(users[index]?.address?.city??""),
                  Text(users[index]?.company?.name??""),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}