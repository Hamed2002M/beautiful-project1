import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1univ/models/profilemodel.dart';
import 'package:project1univ/service/getuserprofileservice.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1univ/service/logoutservice.dart';
import 'package:project1univ/widgets/drawer.dart';
import 'package:project1univ/widgets/taBbarviewhomepage.dart';


import 'package:flutter/cupertino.dart';
class HomePage extends StatelessWidget {
static String id = "HomePage";

@override
Widget build(BuildContext context) {
return DefaultTabController(
length: 4,
child: Scaffold(
appBar:

 AppBar(
  backgroundColor: const Color.fromARGB(255, 150, 169, 179),
title: Text('Home'),
bottom: TabBar(
tabs: [
  Tab(
child:Text( 'Trips'),
icon: Icon(FontAwesomeIcons.airbnb,color: Colors.black.withOpacity(1),),
),
Tab(
child:Text('Resturants'),
icon: Icon(Icons.food_bank,color: Colors.black.withOpacity(1),),
),
Tab(
child: Text("Hotels"),
icon: Icon(FontAwesomeIcons.hotel,color: Colors.black.withOpacity(1)),
),
Tab(
child: Text("Airlines"),
icon: Icon(FontAwesomeIcons.fly,color: Colors.black.withOpacity(1)),
),

],
),
actions: [
Padding(
padding: EdgeInsets.only(right: 16.0),
child: Text(
'Account Balance: \$500',
style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
),
),
],
),
drawer:FutureBuilder<Map<ProfileModel, dynamic>>(
  future: GetUserProfileService().getUserProfile(),
  builder: (BuildContext context, AsyncSnapshot<Map<ProfileModel, dynamic>> snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator();
    } else if (snapshot.hasError) {
      return Text('حدث خطأ في استرداد المعلومات');
    } else {
      // استخراج البيانات المستردة من الاستجابة
      Map <ProfileModel,dynamic> userinfo2 =snapshot.data!;

      // استخدام البيانات في واجهة المستخدم
      return DrawerHomePage(userinfoindrawer: userinfo2);
    }
  },
),
body: TabBarViewHomePage(),
bottomNavigationBar: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
ElevatedButton(
onPressed: () {
// Handle suggestions action
},
child: Icon(Icons.lightbulb),
),
ElevatedButton(
onPressed: () {

},
child: Icon(Icons.map),
),
ElevatedButton(
onPressed: () {

},
child: Icon(Icons.search),
),
],
),
),
);
}
}