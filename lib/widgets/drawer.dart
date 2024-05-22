import 'package:flutter/material.dart';
import 'package:project1univ/models/profilemodel.dart';
import 'package:project1univ/service/logoutservice.dart';

class DrawerHomePage extends StatelessWidget {
   DrawerHomePage({required this.userinfoindrawer});
 final Map<ProfileModel, dynamic> userinfoindrawer;
  @override
  Widget build(BuildContext context) {
    ProfileModel profileModel = userinfoindrawer.keys.first;
    return  Drawer(
      
child: ListView(
children: [
UserAccountsDrawerHeader(
  decoration: BoxDecoration(
    color: Colors.blueGrey
  ),
accountName: Text('${profileModel.data.Firstname}${profileModel.data.Lastname}'),
accountEmail: Text('${profileModel.data.email}'),
currentAccountPicture: CircleAvatar(
backgroundImage: AssetImage('images/LoginImage.jpg'),
),

),
ListTile(
leading: Icon(Icons.logout),
title: Text('Logout'),
onTap: () {
logout(context);
},
),
ListTile(
leading: Icon(Icons.map),
title: Text('Maps'),
onTap: () {
// Handle maps action
},
),
ListTile(
leading: Icon(Icons.lightbulb),
title: Text('Suggestions'),
onTap: () {
// Handle suggestions action
},
),
],
),
);
  }
}