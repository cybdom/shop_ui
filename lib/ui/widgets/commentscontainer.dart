import 'package:flutter/material.dart';
import 'package:shop_ui/global.dart';

class CommentsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(profilePictureUrl),
              ),
              Flexible(
                child: Text(
                  "${MyStrings.user_name}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ...List.generate(
                5,
                (i) {
                  return Icon(
                    Icons.star,
                    color: Colors.blue,
                  );
                },
              ),
            ],
          ),
          Text(
            MyStrings.lorem.substring(0, 100),
          )
        ],
      ),
    );
  }
}
