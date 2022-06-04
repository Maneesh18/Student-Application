import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status_Widget{
  String status1;
  String status2;
  String status3;
  int status1_count;
  int status2_count;
  double status3_Value;

  Status_Widget({required this.status1,required this.status2,required this.status3,required this.status1_count,required this.status2_count,required this.status3_Value});

  Widget getWidget(){
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                status1_count.toString(),
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[200],
                ),
              ),
              Text(
                status1,
                style: TextStyle(
                fontSize: 11.0,
                color: Colors.blue[200],
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                status2_count.toString(),
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[200],
                ),
              ),
              Text(
                status2,
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.blue[200],
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                status3_Value.toString(),
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[200],
                ),
              ),
              Text(
                status3,
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.blue[200],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}