import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final int? number;
  final GestureTapCallback onTap;

  const CircularButton(
      {super.key,
      required this.title,
      required this.icon,
      this.number,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          LimitedBox(
            maxHeight: 50,
            maxWidth: 50,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 5,
                  right: 5,
                  bottom: 3,
                  left: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(icon, color: Colors.black54),
                  ),
                ),
                number != null
                    ? Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          height: 21,
                          width: 21,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: number != null
                              ? FittedBox(
                                  child: Text(
                                    number! > 9 ? "+9" : "$number",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : Container(),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
