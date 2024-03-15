
import 'package:flutter/material.dart';

class GalleryList extends StatelessWidget {
  const GalleryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 2,
        primary: false,
        scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
        return Container(
          margin: const EdgeInsets.only(right: 10),
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
             
              image: NetworkImage("https://images.unsplash.com/photo-1618773928121-c32242e63f39?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww")),
            borderRadius: BorderRadius.circular(14)
          ),
          
        );
      }
      ),
    );
  }
}
