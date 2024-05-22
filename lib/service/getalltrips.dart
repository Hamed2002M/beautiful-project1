
import 'dart:convert';

import 'package:http/http.dart' as http ;
import 'package:project1univ/models/getalltrips.dart';
class GetAllProducts {
  Future<List<ModelProdect>> getallproducts() async {
    http.Response response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    List<dynamic> data = jsonDecode(response.body);
        

    List<ModelProdect> allproducts = [];
    for (int i = 0; i < data.length; i++) {
      allproducts.add(data[i]);
    }
    return allproducts;
  }
}
