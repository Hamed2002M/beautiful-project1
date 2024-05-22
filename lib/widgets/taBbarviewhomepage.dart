import 'package:flutter/material.dart';

class TabBarViewHomePage extends StatelessWidget {
  const TabBarViewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  TabBarView(
children: [
Container(
child: Text('Tab 1 Content'),
),
Container(
child: Text('Tab 2 Content'),
),
Container(
child: Text('Tab 3 Content'),
),
Container(
child: Text('Tab 4 Content'),
),
],
);}}