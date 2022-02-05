// ignore: camel_case_types
import 'package:flutter/material.dart';

class driverscreen extends StatefulWidget {
  const driverscreen({Key? key}) : super(key: key);

  @override
  _screenviewState createState() => _screenviewState();
}

// ignore: camel_case_types
class _screenviewState extends State<driverscreen> {
  get label => null;
  final items = ['st1', 'st2', 'st3'];
  String? newvalue = 'st1';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {},
          color: Colors.black,
          iconSize: 35,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
            color: Colors.black,
            iconSize: 35,
          )
        ],
      ),
      body: Container(
        margin:
            EdgeInsets.only(top: 575.0, left: 5.0, right: 5.0, bottom: 10.0),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        child: Row(
          children: [
            Column(children: [
              Container(
                margin: const EdgeInsets.all(5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton(
                  // borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  iconSize: 35,
                  items: items.map((items) {
                    return DropdownMenuItem(
                      value: newvalue,
                      child: Text(
                        items,
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      newvalue = newValue;
                    });
                  },
                ),
              ),
              Text(DateTime.now().toString()),
            ]),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: IconButton(
                icon: Icon(Icons.message),
                onPressed: () {},
                alignment: Alignment.bottomRight,
                color: Colors.blue,
                iconSize: 50,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
