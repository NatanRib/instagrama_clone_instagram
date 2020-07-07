import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/models/post_model.dart';
import 'package:instagram_clone/views/post.dart';

class Home extends StatelessWidget {

  List<PostModel> posts = [
    PostModel('Natan Ribeiro', 'Viagem inesquecivel','https://cdn.pixabay.com/photo/2016/07/28/09/01/nature-1547302_960_720.jpg'),
    PostModel('João da Silva', 'Minha reliquia', 'https://cdn.pixabay.com/photo/2016/02/13/13/11/cuba-1197800_960_720.jpg'),
    PostModel('Juliana Prado','Curtindo minhas ferias em maldivas','https://cdn.pixabay.com/photo/2017/01/20/00/30/maldives-1993704_960_720.jpg'),
    PostModel('Bianca Mota', 'My City', 'https://cdn.pixabay.com/photo/2015/03/26/09/48/chicago-690364_960_720.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: Text('Instagrama',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'ConeriaScript',
            fontWeight: FontWeight.bold
          ),
        ),
        titleSpacing: 1,
        leading: Icon(FeatherIcons.camera,
          color: Colors.black,
          size: 30,
        ),
        actions: [
          IconButton(icon: Icon(FeatherIcons.send,
            color: Colors.black,
            size: 30,
          ),
            onPressed: null
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height / 10,
              width: Get.width,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 2.0,right: 2.0, bottom: 5.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                    ),
                  );
                }
              ),
            ),
            SizedBox(
              height: Get.height - Get.height/6,
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index){
                  return Post(posts[index]);
                }
              ),
            )
          ],
        ),
      )
    );
  }
}