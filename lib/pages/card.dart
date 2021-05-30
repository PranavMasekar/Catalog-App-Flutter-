import 'package:flutter/material.dart';

class name_card extends StatelessWidget {
  const name_card({
    Key key,
    @required this.mytext,
    @required TextEditingController name,
  })  : _name = name,
        super(key: key);

  final String mytext;
  final TextEditingController _name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset("images/p.jpg"),
          SizedBox(
            height: 20.0,
          ),
          Text(
            mytext,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _name,
            decoration: InputDecoration(
                hintText: "Enter the name",
                labelText: "Name",
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
