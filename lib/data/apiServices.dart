import 'dart:convert';

import 'package:untitled/data/model/itemsModel.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  final url = "https://dummyjson.com/products";

  Future<List<ItemsModel>> getData() async {
    // try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200 || response.statusCode == 201) {
      // print(response.data.toString());
      final data = jsonDecode(response.body);
      final products = ProductResponse.fromJson(data).products;
      // print(products.last.title);
      return products;
    } else {
      throw Exception("Error in fetching Data from Api Link");
    }
    // } catch (e) {
    //   print("==================== Erorr =============================");
    //   return [];
    // }
  }
}
