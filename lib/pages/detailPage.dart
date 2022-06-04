import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;
  const DetailPage({required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Detail Page',
          style: TextStyle(
            color: Colors.grey[100],
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
        centerTitle: true,
      ),      body: Center(child: Text('Detail page of list index $index')),
    );
  }
}
