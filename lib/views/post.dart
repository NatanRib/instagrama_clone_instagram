import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram_clone/models/post_model.dart';

class Post extends StatelessWidget {

  PostModel p;

  Post(this.p);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 1.9,
      width: Get.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  Text('${p.nomeAutor}'),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(FeatherIcons.moreVertical), 
                    onPressed: null)
                ],
              ),
            ],
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: Get.height / 3,
            width: Get.width,
            child:  Image.network('${p.urlImagem}',
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              Text(' ${p.nomeAutor} ',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Text('${p.titulo}')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(FeatherIcons.heart,
                      color: Colors.black,
                    ),
                    onPressed: null
                  ),
                  IconButton(
                    icon: Icon(FeatherIcons.messageCircle,
                      color: Colors.black,
                    ),
                    onPressed: null
                  ),
                  IconButton(
                    icon: Icon(FeatherIcons.send,
                      color: Colors.black,
                    ),
                    onPressed: null
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(FeatherIcons.tag,
                      color: Colors.black,
                    ),
                    onPressed: null,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}