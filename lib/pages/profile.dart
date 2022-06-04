import 'package:flutter/material.dart';
import 'package:refer_me/services/status.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.grey[100],
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://wallpaperaccess.com/full/2490755.jpg'),
              radius: 60.0,
            ),
            SizedBox(height: 5.0),
            Text(
              "Maneesh Reddy",
              style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.grey[300],
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
              ),
            ),
            SizedBox(height: 1.0),
            Text(
              "18B1A05K9",
              style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.grey[300],
                fontSize: 15.0,
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.grey,
            ),
            Status_Widget(status1: 'total credits',status2: 'credits got',status3: 'CGPA',status1_count:15,status2_count:9,status3_Value: 8.7).getWidget(),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  "maneeshreddy2468@gmail.com",
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 0.5,
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
