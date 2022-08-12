import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/image_model.dart';
import '../widgets/buildList.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  List<ImageModel> images = [];

  void _fetchImage() => {
      counter +=1;
      final url = 'https://jsonplaceholder.typicode.com/photos/$counter';
      final res = await http.get(url);
      final parsedJson = JsonDecoder(res.body);
      final imageModel = ImageModel.fromJson(parsedJson));

     setState(() {
       images.add(imageModel);
     });
  
  };
      
      

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image loader'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _fetchImage,
        child: const Icon(Icons.add_a_photo),
      ),
      body: BuildList(images),
    );
  }
}
