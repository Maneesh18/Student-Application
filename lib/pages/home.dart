import 'package:flutter/material.dart';
import 'package:refer_me/pages/detailPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List data = List.filled(3, null, growable: true);
    Map map = {1:'3rd year results',2:'To declare a Map using a Map constructor, we have two steps. First, declare the map and second, initialize the map.'};
    data.add(map);
    data.add(map);
    data.add(map);
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('News Desk'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: _buildListView(data,context),
      ),
    );
  }

  ListView _buildListView(List data,BuildContext context){
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (_,index){
          return Card(
            color: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: ListTile(
              selectedColor: Colors.blue[100],
              leading: (index%4==0)?CircleAvatar(
                backgroundImage: NetworkImage('https://wallpaperaccess.com/full/2490755.jpg'),
                radius: 60.0,
              ):Icon(Icons.add_alert),
              title: Text(
                '3rd year results',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
              subtitle: RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                  ),
                    text: 'The Map object is a simple key/value pair. Keys and values in a map may be of any type. A Map is a dynamic collection. In other words, Maps can grow and shrink at runtime.'),
              ),
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>DetailPage(index: index)),
                );
              },
            ),
          );
    },
    );
  }
}
