import 'package:flutter/material.dart';

void main() {
  runApp(
      GetCountryName()
  );
}

class GetCountryName extends StatelessWidget{
  final List<String> countryList = [
    'Bangladesh', 'India', 'Nepal', 'Sri Lanka', 'England', 'China', 'Japan', 'Canada', 'Algeria', 'Morocco', 'Iran', 'Qatar', 'Ireland'
  ];
  final List<String> capitalList = [
    'Dhaka', 'New Delhi', 'Kathmandu', 'Colombo', 'London', 'Beijing', 'Tokyo', 'Ottawa', 'Algiers', 'Rabat', 'Tehran', 'Doha', 'DDublin'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Custom Long ListView",
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Long ListView"),),
        body: ListView.builder(itemCount: countryList.length, itemBuilder: (BuildContext context, int index){
          return Container(
            height: 70.0,
              color: Colors.green,
              margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 10.0),
              child: ListTile(
                leading: Icon(Icons.arrow_right),
                title: Text(countryList[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.white),),
                subtitle: Text(capitalList[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white),),
                onTap: (){
                  debugPrint('Clicked');
                },
              ),
          );
        }),
      ),
    );
  }
}



