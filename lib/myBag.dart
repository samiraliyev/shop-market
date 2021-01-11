import 'dart:ui';

import 'package:flutter/material.dart';

class MyBag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "My Bag",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red[400],
            ),
          ),
        ),
        ListTile(
          title: Text("chocolate"),
          subtitle: Text("2 * 3 \$ "),
          trailing: Text("6 \$ "),
        ),
        ListTile(
          title: Text("icecrem"),
          subtitle: Text("3 * 6 \$ "),
          trailing: Text("18 \$ "),
        ),
        ListTile(
          title: Text("milk"),
          subtitle: Text("2 * 2 \$ "),
          trailing: Text("4 \$ "),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[400],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "28 \$",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red[400],
            ),
            child: Center(
              child: Text(
                "Completed",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
