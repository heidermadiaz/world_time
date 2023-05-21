import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/routes.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, dynamic> data = {};
  @override
  Widget build(BuildContext context) {
    data =
        ModalRoute.of(context)?.settings?.arguments as Map<String, dynamic>? ??
            {};
    print(data);

    // print(data2);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: <Widget>[
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location'),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(fontSize: 28.0, letterSpacing: 2.8),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 66.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
