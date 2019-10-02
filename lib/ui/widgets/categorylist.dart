import 'package:flutter/material.dart';
import 'package:shop_ui/global.dart';
import 'widgets.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: ListView.builder(
        itemCount: horizontalMenuIcons.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (ctx, i) {
          return GestureDetector(
            onTap: (){
              setState(() {
               _active = i; 
              });
            },
            child: Row(
              children: <Widget>[
                SpecialCategoryItems(
                  color: _active == i ? Colors.blue : Colors.grey[200],
                  icon: Icon(
                    horizontalMenuIcons[i],
                    color: _active == i ? Colors.white : Colors.black45,
                  ),
                ),
                i == horizontalMenuIcons.length - 1
                    ? Container()
                    : SizedBox(width: 35),
              ],
            ),
          );
        },
      ),
    );
  }
}
