import 'package:flutter/material.dart';
import 'package:shop_ui/global.dart';
import 'package:shop_ui/ui/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: <Widget>[
            Text(
              MyStrings.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.apply(color: Colors.black, fontWeightDelta: 2),
            ),
            SizedBox(height: 21.0),
            ProfileContainer(),
            SizedBox(height: 21.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircularButton(
                  title: MyStrings.wallet,
                  icon: Icons.account_balance_wallet,
                  onTap: () {},
                ),
                CircularButton(
                  title: MyStrings.delivery,
                  icon: Icons.send,
                  onTap: () {},
                ),
                CircularButton(
                  number: 11,
                  title: MyStrings.message,
                  icon: Icons.message,
                  onTap: () {},
                ),
                CircularButton(
                  title: MyStrings.service,
                  icon: Icons.attach_money,
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 21.0),
            Container(
              margin: EdgeInsets.symmetric(vertical: 9.0),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 3.0,
                    offset: Offset(0, 1),
                  ),
                ],
                color: Colors.white,
              ),
              child: ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(9.0),
                  decoration: BoxDecoration(
                      color: Color(0xff8d7bef), shape: BoxShape.circle),
                  child: Icon(Icons.location_on, color: Colors.white),
                ),
                title: Text(MyStrings.address),
                subtitle: Text(MyStrings.ensure_address),
                trailing: IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 9.0),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 3.0,
                    offset: Offset(0, 1),
                  ),
                ],
                color: Colors.white,
              ),
              child: ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(9.0),
                  decoration: BoxDecoration(
                      color: Color(0xfff468b9), shape: BoxShape.circle),
                  child: Icon(Icons.lock, color: Colors.white),
                ),
                title: Text(MyStrings.privacy),
                subtitle: Text(MyStrings.system_permission),
                trailing: IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 9.0),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 3.0,
                    offset: Offset(0, 1),
                  ),
                ],
                color: Colors.white,
              ),
              child: ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(9.0),
                  decoration: BoxDecoration(
                      color: Color(0xffffca59), shape: BoxShape.circle),
                  child: Icon(Icons.settings, color: Colors.white),
                ),
                title: Text(MyStrings.general),
                subtitle: Text(MyStrings.functional_settings),
                trailing: IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 9.0),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 3.0,
                    offset: Offset(0, 1),
                  ),
                ],
                color: Colors.white,
              ),
              child: ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(9.0),
                  decoration: BoxDecoration(
                      color: Color(0xff5bd2d4), shape: BoxShape.circle),
                  child: Icon(Icons.notifications, color: Colors.white),
                ),
                title: Text(MyStrings.notification),
                subtitle: Text(MyStrings.take_new_in_time),
                trailing: IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
