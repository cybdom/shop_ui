import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      onPageChanged: (i) {
        setState(() {
          _active = i;
        });
      },
      controller: PageController(
        initialPage: _active,
        viewportFraction: 0.6,
      ),
      itemBuilder: (ctx, i) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 9.0),
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                height: _active == i ? 300 : 270,
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Image.network(
                      "http://www.pngmart.com/files/6/Decorative-Lamp-PNG-Photo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: _active == i ? null : 170,
                bottom: _active == i ? 0 : null,
                right: _active == i ? 0 : null,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.grey[300],
                        offset: Offset(0, 1),
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Landscape",
                        style: Theme.of(context).textTheme.title,
                      ),
                      Text(
                        "Matter made",
                        style: Theme.of(context).textTheme.subhead,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "358 USD",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_forward),
                            color: Colors.blue,
                            onPressed: () {},
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
