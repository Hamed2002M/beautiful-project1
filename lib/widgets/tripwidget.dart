import 'package:flutter/material.dart';
import 'package:project1univ/models/getalltrips.dart';


class Custom_widget extends StatelessWidget {
   Custom_widget(
   { required this.prodect });
ModelProdect prodect ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          
          children: [
      Container(
        height: 180,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 20,
              color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
              spreadRadius: 1,
              offset: Offset(10,10))
        ]),
        width: 180,
        child: Card(
          elevation: 5,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${prodect.title}",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${prodect.price.toString()}"),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      // Positioned(
      //     height: 100,
      //     width: 100,
      //     top: 10,
      //     left: 40,
      //     child: Image.network(prodect.image))
    ]));
  }
}
