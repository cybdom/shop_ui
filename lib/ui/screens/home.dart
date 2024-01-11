import 'package:flutter/material.dart';
import 'package:shop_ui/global.dart';
import 'package:shop_ui/ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  MyStrings.furniture,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.apply(color: Colors.black, fontWeightDelta: 2),
                ),
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(height: 15.0),
            CategoryList(),
            SizedBox(height: 15.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  MyStrings.modern,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.apply(color: Colors.black, fontWeightDelta: 2),
                ),
                SizedBox(width: 15),
                Text(
                  MyStrings.good_quality_item,
                  style: Theme.of(context).textTheme.bodyLarge?.apply(
                        color: Colors.grey.shade300,
                      ),
                )
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topCenter,
              height: 351,
              child: ProductList(),
            ),
            SizedBox(height: 15.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  MyStrings.popular,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.apply(color: Colors.black, fontWeightDelta: 2),
                ),
                SizedBox(width: 15),
                Text(
                  MyStrings.in_recent_month,
                  style: Theme.of(context).textTheme.bodyLarge?.apply(
                        color: Colors.grey.shade300,
                      ),
                )
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.symmetric(horizontal: 23.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 23.0,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(lampImages[0]),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Aerial Pendant",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          MyStrings.lorem.substring(0, 100),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "199 ",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.apply(
                                        color: Colors.blue,
                                        fontWeightDelta: 2,
                                        fontSizeFactor: 1.2),
                              ),
                              TextSpan(
                                text: "USD",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
