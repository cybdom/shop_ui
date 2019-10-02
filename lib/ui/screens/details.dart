import 'package:flutter/material.dart';
import 'package:shop_ui/global.dart';
import 'package:shop_ui/ui/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Positioned.fill(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: double.infinity,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: FancyBackground(),
                          ),
                          Positioned(
                            top: 15,
                            left: 15,
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.blue,
                              ),
                              child: GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height / 6,
                            left: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "349",
                                        style: TextStyle(
                                            fontSize: 29,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: " USD",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Text("Free delivery to your door.")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Superpose",
                            style: Theme.of(context)
                                .textTheme
                                .title
                                .apply(color: Colors.black, fontWeightDelta: 2),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "The smallest table lamp designer by X",
                            style: Theme.of(context)
                                .textTheme
                                .body2
                                .apply(color: Colors.grey[500]),
                          ),
                          SizedBox(height: 15.0),
                          Container(
                            height: 171,
                            child: InfoListWidget(),
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                MyStrings.comments,
                                style: Theme.of(context).textTheme.title.apply(
                                    color: Colors.black, fontWeightDelta: 2),
                              ),
                              SizedBox(width: 15.0),
                              Text("\u2022 (3333)"),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Container(
                            height: 151,
                            margin: EdgeInsets.only(bottom: 45.0),
                            child: PageView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (ctx, i) {
                                return CommentsContainer();
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
                decoration: BoxDecoration(
                  color: Color(0xff3575fe),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Buy Now!",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoListWidget extends StatefulWidget {
  const InfoListWidget({
    Key key,
  }) : super(key: key);

  @override
  _InfoListWidgetState createState() => _InfoListWidgetState();
}

class _InfoListWidgetState extends State<InfoListWidget> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: productInfo.length,
      itemBuilder: (ctx, i) {
        return GestureDetector(
          onTap: () => setState(() {
            _active = i;
          }),
          child: Container(
            width: 121,
            margin: EdgeInsets.symmetric(horizontal: 9.0, vertical: 9.0),
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: _active == i ? Colors.blue : Colors.grey[200],
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[200],
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "${productInfo[i]['title']}",
                  style: TextStyle(
                    color: _active == i ? Colors.white : Colors.black87,
                    fontSize: 19,
                  ),
                ),
                Text(
                  "${productInfo[i]['detail']}",
                  style: TextStyle(
                    color: _active == i ? Colors.white : Colors.black87,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
