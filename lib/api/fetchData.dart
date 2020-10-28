import 'package:flutter/material.dart';
import 'package:gado_app/api/postModel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class FetchData{

  //Create the function to return all posts

  Future <List <PostModel>> fetchPosts() async {

    String url = "http://192.168.1.12:1337/posts";
    http.Response  response = await http.get(url);


    if(response.statusCode == 200 ){
      var body = jsonDecode(response.body);

      List <PostModel> posts = [];

      for(var item in body) {
        posts.add(PostModel.fromJson(item));
      }
      return posts;
    }
    return null;




  }
}